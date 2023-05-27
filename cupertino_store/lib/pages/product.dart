import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Global.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Cupertino Store",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: Global.productList
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      e['image'],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${e['name']}"),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "\$${e['price']}",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  AddProduct c1 = AddProduct(
                                      name: e['name'],
                                      image: e['image'],
                                      price: e['price']);
                                  setState(() {
                                    Global.addProductList.add(c1);
                                  });
                                  // print(Global.addProductList['name']);
                                  print('${c1.price}');
                                  print('${Global.addProductList}');
                                  /*Global.sum = c1.price.fold(
                                      0,
                                      (previous, current) =>
                                          previous + current);*/
                                },
                                child: Icon(CupertinoIcons.add_circled),
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
          ],
        ),
      ),
    );
  }
}
