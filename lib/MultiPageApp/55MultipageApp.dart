import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojects/MultiPageApp/Second.dart';
import 'package:flutterprojects/MultiPageApp/Third.dart';



void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeRoute(),
      '/second': (context) => Second(),
      '/third': (context) => Third(),
    },
  ));
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MultipageApp'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
              child: Text('Second!'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
          ),
          ElevatedButton(
            child: Text('Third!'),
            onPressed: () {
              Navigator.pushNamed(context, '/third');
            },
          ),
        ],
      )),
    );
  }
}
