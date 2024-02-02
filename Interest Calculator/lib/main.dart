import 'package:flutter/material.dart';

void main() => runApp(MainClass());

class MainClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "APP_NAME_HERE",
        home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
        ));
  }
}
