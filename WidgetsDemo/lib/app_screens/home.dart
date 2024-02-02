import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.deepPurple,
      //  width & height Can be applied only if container is wrapped by Center Widget
      //  width: 200.0,
      //  height: 400.0,

      //  margin: EdgeInsets.all(50.0), // Apply Margin in all direction
      //  margin: EdgeInsets.only(left:50.0, top: 20.0), // Apply margin in mentioned directions

      //  use padding as same way as margin
      padding: EdgeInsets.all(10.0),

      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(child: FlightImageAsset()),
            Expanded(
              child: Text(
                "Spice Jet",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  decoration: TextDecoration.none,

                  //Font Editing Code
                  fontSize: 14.0,
                  color: Colors.amberAccent,
                  // fontFamily: 'Sixtyfour',
                  // fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Expanded(
              // Divide row equally on screen
              child: Text(
                "Delhi to Mumbai",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  decoration: TextDecoration.none,

                  //Font Editing Code
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(child: BookButton("Delhi to Mumbai")),
          ]),
          Row(children: <Widget>[
            Expanded(child: FlightImageAsset()),
            Expanded(
              child: Text(
                "Air India",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  decoration: TextDecoration.none,

                  //Font Editing Code
                  fontSize: 14.0,
                  color: Colors.amberAccent,
                ),
              ),
            ),
            Expanded(
              // Divide row equally on screen
              child: Text(
                "Jaipur to Vishakhapatnam",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  decoration: TextDecoration.none,

                  //Font Editing Code
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(child: BookButton("Jaipur to Visakhapatnam")),
          ]),
        ],
      ),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage image = AssetImage('images/plane-ticket.png');
    Image planeImage = Image(
      image: image,
      width: 50.0,
      height: 50.0,
    );
    return Container(
      child: planeImage,
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
    );
  }
}

class BookButton extends StatelessWidget {
  var flightJourney;

  BookButton(String flightJourney) {
    this.flightJourney = flightJourney;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          child: Text(
            "Book",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              decoration: TextDecoration.none,

              //Font Editing Code
              fontSize: 12.0,
              color: Colors.deepOrange,
            ),
          ),
          onPressed: () => bookFlight(context, flightJourney)),
    );
  }

  void bookFlight(BuildContext context, String flightJourney) {
    var alertDialog = AlertDialog(
      title: Text("Success"),
      content: Text("Flight from $flightJourney has been Booked!\n\nHave a great Journey!"),
    );

    showDialog(context: context, builder: (BuildContext context) => alertDialog);
  }
}
