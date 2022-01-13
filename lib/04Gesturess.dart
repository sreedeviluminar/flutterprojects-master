import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesturess'),
        backgroundColor: Colors.green,
      ),
      body: Center(child: MyButton()),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      // show snackbar on tap of child
      onTap: () {
        final snackBar = SnackBar(content: Text("Hai alllll...."));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      // The tap button
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color:Colors.amber,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text('Tap Button'),
      ),
    );
  }
}
