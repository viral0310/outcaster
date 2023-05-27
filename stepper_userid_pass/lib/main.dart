import 'package:flutter/material.dart';
import 'package:stepper_userid_pass/pages/splashscreen.dart';
import 'package:stepper_userid_pass/pages/stepper.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.redAccent,
        secondary: Colors.redAccent,
      ),
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/stepper': (context) => StepperPage(),
    },
  ));
}
