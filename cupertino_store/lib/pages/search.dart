import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Global.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Shirt"),
                  Spacer(),
                  Icon(
                    CupertinoIcons.clear_circled_solid,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: Global.searchList
                .map(
                  (e) => Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
                                  "${e['price']}",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                              ],
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {},
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
    );
  }
}
