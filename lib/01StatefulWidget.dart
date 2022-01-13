import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SecondPage(),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SecondPageState();
}

class SecondPageState extends State {
  Color pagecolor = Colors.red;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: pagecolor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changecolor,
        child: Icon(Icons.album_sharp),
        tooltip: "Click here",
      ),
    );
  }

  void changecolor() {
    setState(() {
      if (pagecolor == Colors.red) {
        pagecolor = Colors.green;
        return;
      }
      pagecolor = Colors.red;
    });
  }
}
