import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _currentItemSelected = 'INR';

  // List of items in our dropdown menu
  var _currencies = [
    'INR',
    'AUD',
    'AED',
    'USD',
    'CAD',
  ];

  String cityName = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            DropdownButton(
              // Initial Value
              value: _currentItemSelected,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: _currencies.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),

              onChanged: (String? newValue) {
                //Code will execute after selection from list
                setState(() {
                  _currentItemSelected = newValue!;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Your Selected Currency is $_currentItemSelected",
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
