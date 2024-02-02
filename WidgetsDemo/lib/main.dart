import 'dart:js';

import 'package:flutter/material.dart';
import 'package:widgets_demo/app_screens/home.dart';

void main() => runApp(MainClass());

class MainClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        title: "UI Widgets",
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Flight Booking App",
                style: TextStyle(
                    decoration: TextDecoration.none,

                    //Font Editing Code
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
              backgroundColor: Colors.deepPurple,
            ),
            body: Home()));
  }
}
