import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var textToDisplay = "";
  var _formKey = GlobalKey<FormState>();

  TextEditingController _principalAmountTC = TextEditingController();
  TextEditingController _rateOfInterestTC = TextEditingController();
  TextEditingController _termTC = TextEditingController();

  var _currencies = [
    'INR',
    'AUD',
    'AED',
    'USD',
    'CAD',
  ];

  String _selectedCurrency = '';

  @override
  void initState() {
    super.initState();
    _selectedCurrency = _currencies[0];
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.titleMedium;

    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Image.asset(
                "images/bank.png",
                height: 200,
                width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                validator: (value) {
                  if (int.tryParse(value!) == null) {
                    return 'Please Enter a Number';
                  } else if (value.isEmpty) {
                    return 'Please Enter a principal Amount';
                  }else if (int.tryParse(value)! > 1000000) {
                    return "Max Amount is 1000000";
                  }
                },
                controller: _principalAmountTC,
                style: textStyle,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: const Text("Principal Amount"),
                    labelStyle: textStyle,
                    hintText: "Enter Principal Amount",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    errorStyle: TextStyle(color: Colors.pink)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                validator: (value) {
                  if (int.tryParse(value!) == null) {
                    return 'Please Enter a Number';
                  } else if (value!.isEmpty) {
                    return 'Please Enter a ROI (in %)';
                  }else if (int.tryParse(value)! > 20) {
                    return "Max Interest Rate is 20%";
                  }
                },
                controller: _rateOfInterestTC,
                style: textStyle,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: const Text("Rate of Interest"),
                    labelStyle: textStyle,
                    hintText: "Enter Rate of Interest in (%)",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    errorStyle: TextStyle(color: Colors.pink)),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextFormField(
                      validator: (value) {
                        if (int.tryParse(value!) == null) {
                          return 'Please Enter a Number';
                        } else if (value!.isEmpty) {
                          return 'Please Enter Number of Years';
                        } else if (int.tryParse(value)! > 30) {
                          return "Tenure can't be more than 30 Years";
                        }
                      },
                      controller: _termTC,
                      style: textStyle,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          label: const Text("Tenure"),
                          labelStyle: textStyle,
                          hintText: "Enter Tenure in Years",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          errorStyle: TextStyle(color: Colors.pink)),
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.all(5.0)),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
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
                        _onCurrencySelected(newValue);
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
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20.0),
                          backgroundColor: Theme.of(context).primaryColor,
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
                        onPressed: () {
                          setState(() {
                            if (_formKey.currentState!.validate()) {
                              this.textToDisplay = _calculateInterest();
                            }
                          });
                        }),
                  ),
                ),
                Container(margin: EdgeInsets.all(5.0)),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
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
                        onPressed: () {
                          setState(() {
                            _reset();
                          });
                        }),
                  ),
                ),
              ],
            ),
            Container(margin: EdgeInsets.only(top: 25.0, bottom: 25.0)),
            Center(
              child: Text(
                this.textToDisplay,
                textAlign: TextAlign.center,
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

  void _onCurrencySelected(String? newValue) {
    setState(() {
      this._selectedCurrency = newValue!;
    });
  }

  String _calculateInterest() {
    double _principalAmount = double.parse(_principalAmountTC.text);
    double _rateOfInterest = double.parse(_rateOfInterestTC.text);
    double _term = double.parse(_termTC.text);

    double totalPayableAmount =
        _principalAmount + (_principalAmount * _rateOfInterest * _term) / 100;
    String result =
        'After $_term years, Your investment will be worth $totalPayableAmount $_selectedCurrency';
    return result;
  }

  void _reset() {
    _principalAmountTC.text = "";
    _rateOfInterestTC.text = "";
    _termTC.text = "";
    textToDisplay = "";
    _selectedCurrency = _currencies[0];
  }
}
