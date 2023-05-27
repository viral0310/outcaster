import 'package:cupertino_store/pages/cart.dart';
import 'package:cupertino_store/pages/product.dart';
import 'package:cupertino_store/pages/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoStore(),
    ),
  );
}

class CupertinoStore extends StatefulWidget {
  const CupertinoStore({Key? key}) : super(key: key);

  @override
  State<CupertinoStore> createState() => _CupertinoStoreState();
}

class _CupertinoStoreState extends State<CupertinoStore> {
  final List<Widget> tabList = [Products(), Search(), cart()];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        // navigationBar: const CupertinoNavigationBar(
        //   middle: Text(
        //     "Cupertino Store",
        //     style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        //   ),
        // ),
        child: CupertinoTabScaffold(
      tabBuilder: (BuildContext, index) {
        return tabList[index];
      },
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Products"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart), label: "cart"),
        ],
      ),
    ));
  }
}
