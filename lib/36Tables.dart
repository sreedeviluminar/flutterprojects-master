import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  double iconSize = 40;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Table'),
          ),
          body: Center(
              child: Column(
                  children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: Table(
                    border: TableBorder.all(),
                    columnWidths: {0: FractionColumnWidth(.4), 1: FractionColumnWidth(.2), 2: FractionColumnWidth(.4)},
                    children: [
                      TableRow( children: [
                        Column(children:[
                          Icon(Icons.account_box, size: iconSize,),
                          Text('My Account')
                        ]),
                        Column(children:[
                          Icon(Icons.settings, size: iconSize,),
                          Text('Settings')
                        ]),
                        Column(children:[
                          Icon(Icons.lightbulb_outline, size: iconSize,),
                          Text('Ideas')
                        ]),
                      ]),
                      TableRow( children: [
                        Icon(Icons.cake, size: iconSize,),
                        Icon(Icons.voice_chat, size: iconSize,),
                        Icon(Icons.add_location, size: iconSize,),
                      ]),
                      TableRow( children: [
                        Icon(Icons.cake, size: iconSize,),
                        Icon(Icons.voice_chat, size: iconSize,),
                        Icon(Icons.add_location, size: iconSize,),
                      ]),
                    ],
                  ),
                ),
              ]))),
    );
  }
}