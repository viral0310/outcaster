import 'package:flutter/material.dart';
import 'package:play_store/pages/categories.dart';
import 'package:play_store/pages/foryou.dart';
import 'package:play_store/pages/topcharts.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: const PlayStore(),
    ),
  );
}

class PlayStore extends StatefulWidget {
  const PlayStore({Key? key}) : super(key: key);

  @override
  State<PlayStore> createState() => _PlayStoreState();
}

class _PlayStoreState extends State<PlayStore> {
  Color fontColor = Colors.black.withOpacity(0.6);
  @override
  Widget build(BuildContext context) {
    bool ios = Theme.of(context).platform == TargetPlatform.iOS;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: Card(
                    elevation: 3,
                    child: ListTile(
                      title: const Text(
                        "Search for app & Games",
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: IconButton(
                          icon: const Icon(Icons.menu), onPressed: () {}),
                      trailing: IconButton(
                        icon: const Icon(Icons.keyboard_voice_outlined),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TabBar(
                  tabs: [
                    Container(
                      height: 25,
                      child: Text(
                        "For you",
                        style: TextStyle(color: fontColor),
                      ),
                    ),
                    Container(
                      height: 25,
                      child: Text(
                        "Top charts",
                        style: TextStyle(color: fontColor),
                      ),
                    ),
                    Container(
                      height: 25,
                      child: Text(
                        "categories",
                        style: TextStyle(color: fontColor),
                      ),
                    ),
                    Container(
                      height: 25,
                      child: Text(
                        "Events",
                        style: TextStyle(color: fontColor),
                      ),
                    ),
                  ],
                  indicatorWeight: 3,
                  indicatorColor: Colors.green,
                  indicatorSize: TabBarIndicatorSize.label,
                  onTap: (val) {
                    fontColor = Colors.green;
                  },
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 140,
                  width: double.infinity,
                  color: Colors.grey,
                  child: TabBarView(
                    children: [
                      const ForYouPage(),
                      const TopCharts(),
                      const New(),
                      Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
