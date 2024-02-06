import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String cityName = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (String userInput) {
              setState(() {
                cityName = userInput;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "Your Input City is $cityName",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
