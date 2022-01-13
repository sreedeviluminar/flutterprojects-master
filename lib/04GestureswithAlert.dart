import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {


  // user defined function
  void _showDialog(BuildContext context) {
    // flutter defined function
    showDialog(context: context, builder: (BuildContext context) {
    // return object of type Dialog
      return AlertDialog(
    title: new Text("Message"),
    content: new Text("Hello World"),
    actions: <Widget>[
    new ElevatedButton(
    child: new Text("Close"),
    onPressed: () {
    Navigator.of(context).pop();
    },
    ),
    ],
    );
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gesturesss"),),
      body: Center(
          child: GestureDetector(
              onTap: () {
                _showDialog(context);
              },
              child: Text( 'Hello World', )
          )
      ),
    );
  }
}