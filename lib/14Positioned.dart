
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Network Image',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePositioned(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[50],
        height: 300,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 60,
              top: 160,
              right: 130,
              bottom: 70,
              child: Text("Dart & Flutter",style:TextStyle(color: Colors.blue),),
            ),
          ],
        ),
      ),
    );
  }
}