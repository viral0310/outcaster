import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Global.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const SettingsUi(),
    ),
  );
}

class SettingsUi extends StatefulWidget {
  const SettingsUi({Key? key}) : super(key: key);

  @override
  State<SettingsUi> createState() => _SettingsUiState();
}

class _SettingsUiState extends State<SettingsUi> {
  TextStyle titleStyleAnd =
      const TextStyle(color: Colors.deepOrange, fontSize: 17);
  TextStyle titleStyleIos = const TextStyle(color: Colors.grey, fontSize: 17);
  TextStyle fontStyleIos = const TextStyle(color: Colors.black, fontSize: 17);
  @override
  Widget build(BuildContext context) {
    bool isIos = Theme.of(context).platform == TargetPlatform.iOS;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings UI"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isIos
                  ? Text(
                      "Common",
                      style: titleStyleIos,
                    )
                  : Text(
                      "Common",
                      style: titleStyleAnd,
                    ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  return isIos != true
                      ? Card(
                          margin: const EdgeInsets.all(1),
                          elevation: 0.5,
                          child: ListTile(
                            leading: Icon(Global.common[i]['icon']),
                            title: Text("${Global.common[i]['name']}"),
                            subtitle:
                                Text("${Global.common[i]['description']}"),
                          ),
                        )
                      : Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Global.common[i]['icon'],
                                size: 25,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${Global.common[i]['name']}",
                                style: fontStyleIos,
                              ),
                              const Spacer(),
                              Text("${Global.common[i]['description']}",
                                  style: titleStyleIos),
                              const Icon(
                                Icons.chevron_right_outlined,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        );
                },
                itemCount: Global.common.length,
              ),
              const SizedBox(
                height: 10,
              ),
              isIos
                  ? Text(
                      "Account",
                      style: titleStyleIos,
                    )
                  : Text(
                      "Account",
                      style: titleStyleAnd,
                    ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  return isIos != true
                      ? Card(
                          margin: const EdgeInsets.all(1),
                          elevation: 0.5,
                          child: ListTile(
                            leading: Icon(Global.account[i]['icon']),
                            title: Text("${Global.account[i]['name']}"),
                          ),
                        )
                      : Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(7.0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Global.account[i]['icon'],
                                size: 25,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${Global.account[i]['name']}",
                                style: fontStyleIos,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.chevron_right_outlined,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        );
                },
                itemCount: Global.account.length,
              ),
              const SizedBox(
                height: 10,
              ),
              isIos
                  ? Text(
                      "Security",
                      style: titleStyleIos,
                    )
                  : Text(
                      "Security",
                      style: titleStyleAnd,
                    ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  return isIos != true
                      ? Card(
                          margin: const EdgeInsets.all(1),
                          elevation: 0.5,
                          child: ListTile(
                            leading: Icon(Global.security[i]['icon']),
                            title: Text("${Global.security[i]['name']}"),
                            trailing: Switch(
                                value: Global.security[i]['switch'],
                                onChanged: (val) {
                                  setState(() {
                                    Global.security[i]['switch'] = val;
                                  });
                                }),
                          ),
                        )
                      : Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(7.0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Global.security[i]['icon'],
                                size: 25,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${Global.security[i]['name']}",
                                style: fontStyleIos,
                              ),
                              const Spacer(),
                              CupertinoSwitch(
                                  activeColor: Colors.deepOrange,
                                  value: Global.security[i]['switch'],
                                  onChanged: (val) {
                                    Global.security[i]['switch'] = val;
                                  }),
                            ],
                          ),
                        );
                },
                itemCount: Global.security.length,
              ),
              const SizedBox(
                height: 10,
              ),
              isIos
                  ? Text(
                      "Misc",
                      style: titleStyleIos,
                    )
                  : Text(
                      "Misc",
                      style: titleStyleAnd,
                    ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  return isIos != true
                      ? Card(
                          margin: const EdgeInsets.all(1),
                          elevation: 0.5,
                          child: ListTile(
                            leading: Icon(Global.misc[i]['icon']),
                            title: Text("${Global.misc[i]['name']}"),
                          ),
                        )
                      : Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(7.0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Global.misc[i]['icon'],
                                size: 25,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${Global.misc[i]['name']}",
                                style: fontStyleIos,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.chevron_right_outlined,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        );
                },
                itemCount: Global.misc.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
