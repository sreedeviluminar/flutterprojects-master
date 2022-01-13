import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          title: Text('ToolTip'),
          backgroundColor: Colors.orange[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ) //IconButton
      ), //AppBar
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Tooltip(
                    message: 'Text',
                    child: Text(
                      'Flutter is an open-source UI software development kit created by Google. ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                      ), //TextStyle
                    ), //Text
                  ), //Tooltip
                ), //Padding
                color: Colors.green[50],
                width: 300,
                height: 175,
              ), //Container
            ], //<Widget>[]
          ) //Row
      ), //Center
    ), //Scafflod
    debugShowCheckedModeBanner: false,
  )); //MaterialApp
}
