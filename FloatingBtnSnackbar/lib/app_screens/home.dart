import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ElevatedButton(
            child: Text(
              "Snackbar",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                decoration: TextDecoration.none,

                //Font Editing Code
                fontSize: 12.0,
                color: Colors.deepOrange,
              ),
            ),
            onPressed: () => showSnack(context)),
      ),
    );
  }

  void showSnack(BuildContext context) {
    var snackBar = SnackBar(content: Text("This is a snackbar"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
