import 'package:first_app/app_screens/luckynumber_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainClass());

class MainClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Lucky Number Generator",
        home: Scaffold(
            appBar: AppBar(
              title: Text("My First App"),
            ),
            body: LuckyNumberScreen()));
  }
}
