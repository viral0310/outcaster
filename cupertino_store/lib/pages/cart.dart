import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Global.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  String? name;
  String? email;
  String? location;
  String? pin;
  DateTime dateTime = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  List months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Shopping Cart",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoTextField(
              prefix: const Icon(
                CupertinoIcons.person_alt,
                color: CupertinoColors.lightBackgroundGray,
                size: 28,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0,
                    color: CupertinoColors.inactiveGray,
                  ),
                ),
              ),
              placeholder: 'Name',
              onChanged: (val) {
                setState(() {
                  name = val;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoTextField(
              prefix: const Icon(
                CupertinoIcons.mail_solid,
                color: CupertinoColors.lightBackgroundGray,
                size: 28,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0,
                    color: CupertinoColors.inactiveGray,
                  ),
                ),
              ),
              placeholder: 'Email',
              onChanged: (val) {
                setState(() {
                  email = val;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoTextField(
              prefix: const Icon(
                CupertinoIcons.location_solid,
                color: CupertinoColors.lightBackgroundGray,
                size: 28,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0,
                    color: CupertinoColors.inactiveGray,
                  ),
                ),
              ),
              placeholder: 'Location',
              onChanged: (val) {
                setState(() {
                  location = val;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          CupertinoIcons.clock,
                          color: CupertinoColors.lightBackgroundGray,
                          size: 28,
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Delivery time',
                          style: TextStyle(
                            color: CupertinoColors.black.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      //DateFormat.yMMMd().add_jm().format(dateTime),
                      "${months[(dateTime.month) - 1]} ${dateTime.day},"
                      " ${dateTime.year} ${dateTime.hour}:${dateTime.minute} ",
                      style: TextStyle(
                        color: CupertinoColors.black.withOpacity(0.3),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.dateAndTime,
                    initialDateTime: dateTime,
                    onDateTimeChanged: (val) {
                      setState(
                        () {
                          dateTime = val;
                          time = val as TimeOfDay;
                        },
                      );
                      print('${time.format(context)}');
                    },
                  ),
                ),
                Column(
                  children: Global.addProductList
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          e.image!,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("${e.name}"),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        "${e.price}",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    "${e.price}",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                                height: 1,
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Shipping \$21.00",
                        style: TextStyle(color: Colors.black.withOpacity(0.3)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Tax \$10.32",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.3), fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Total \$203.32", style: TextStyle()),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
