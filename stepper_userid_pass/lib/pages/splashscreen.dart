import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Duration duration = const Duration(seconds: 3);
    Timer(duration, () {
      Navigator.of(context).pushNamed('/stepper');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Spacer(flex: 4),
            Image.asset('assets/flutter_logo (2).png'),
            Spacer(flex: 4),
            Text(
              "Stepper With Flutter",
              style: TextStyle(color: Colors.redAccent[400], fontSize: 30),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
