import 'package:flutter/material.dart';
import 'package:school_app/Screens/Login_page.dart';
import 'package:school_app/Screens/home.dart';
import 'package:school_app/Screens/profile_screen.dart';
import 'package:school_app/Screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => loginPage(),
      "/home": (context) => home_page(),
      "/login": (context) => loginPage(),
      "/profile": (context) => profile()
    },
  ));
}
