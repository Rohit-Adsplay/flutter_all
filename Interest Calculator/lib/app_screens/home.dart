import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _principalAmount = "";
  String _rateOfInterest = "";
  String _term = "";
  String _selectedCurrency = "INR";

  var _currencies = [
    'INR',
    'AUD',
    'AED',
    'USD',
    'CAD',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Image.asset(
              "images/bank.png",
              height: 200,
              width: 200,
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: const Text("Principal Amount"),
                    hintText: "Enter Principal Amount",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                onChanged: (String userInput) {
                  setState(() {
                    _principalAmount = userInput;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: const Text("Rate of Interest"),
                    hintText: "Enter Rate of Interest in (%)",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                onChanged: (String userInput) {
                  setState(() {
                    _rateOfInterest = userInput;
                  });
                },
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          label: const Text("Term"),
                          hintText: "Enter Term in Years",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      onChanged: (String userInput) {
                        setState(() {
                          _term = userInput;
                        });
                      },
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.all(5.0)),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      // Initial Value
                      value: _selectedCurrency,

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
                          _selectedCurrency = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Container(margin: EdgeInsets.only(top: 5.0, bottom: 5.0)),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20.0),
                          backgroundColor: Colors.deepPurple,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: Text(
                          "Calculate",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            decoration: TextDecoration.none,

                            //Font Editing Code
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {}),
                  ),
                ),
                Container(margin: EdgeInsets.all(5.0)),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20.0),
                          backgroundColor: Colors.white,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: Text(
                          "Reset",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            decoration: TextDecoration.none,

                            //Font Editing Code
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {}),
                  ),
                ),
              ],
            ),
            Container(margin: EdgeInsets.only(top: 25.0, bottom: 25.0)),
            Center(
              child: Text(
                "PlaceHolder",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
