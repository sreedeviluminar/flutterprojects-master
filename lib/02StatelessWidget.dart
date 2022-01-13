import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text(
            "MyNewApp",
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
        ),
        body: Container(
          child: Center(
              child: Text("My first Page",
                  style: TextStyle(fontSize: 50, color: Colors.white))),
        ),
      ),
    );
  }
}
