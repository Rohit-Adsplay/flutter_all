import 'dart:js';

import 'package:floatingbtn_snackbar/app_screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainClass());

class MainClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "More Widgets",
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Floating Btn & Snackbar",
              style: TextStyle(
                  decoration: TextDecoration.none,

                  //Font Editing Code
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            backgroundColor: Colors.deepPurple,
          ),
          body: Home(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("FAB Clicked");
            },
            child: Icon(Icons.add),
            tooltip: 'Add One more Item',
          ),
        ));
  }


}
