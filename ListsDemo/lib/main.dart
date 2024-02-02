import 'package:flutter/material.dart';

void main() => runApp(MainClass());

class MainClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Lists Demo",
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Fixed and Dynamic List",
              style: TextStyle(
                  decoration: TextDecoration.none,

                  //Font Editing Code
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            backgroundColor: Colors.deepPurple,
          ),
          // body: getListView(),
          body: getLongListView(),
        ));
  }
}

//////////////////////////////////Small List Code/////////////////////////////
Widget getListView() {
  var listView = ListView(children: <Widget>[
    ListTile(
      leading: Icon(Icons.landscape),
      title: Text("Landscape"),
      subtitle: Text("This is a Landscape"),
      trailing: Icon(Icons.wb_sunny),
      onTap: () {
        // for On Click Purpose
        debugPrint("1st Element Clicked");
      },
    ),
    ListTile(
      leading: Icon(Icons.laptop_chromebook),
      title: Text("Windows Laptop"),
      subtitle: Text("Windows 11 is Running"),
      trailing: Icon(Icons.laptop_outlined),
    ),
    Text("We can also Add Text to List and Any Widget At ALL, Below one is Container"),
    Container(
      color: Colors.orange,
      height: 50.0,
    )
  ]);
  return listView;
}

////////////////////////////////Long Dynamic List Code/////////////////////////////////

List<String> getListElements() {
  var items = List<String>.generate(20, (index) => "Item Count : $index");
  return items;
}

Widget getLongListView() {
  var list = getListElements(); // Calling Above Function

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(list[index]),
      onTap: () {
        debugPrint('${list[index]} was clicked');
      },
    );
  });
  return listView;
}
