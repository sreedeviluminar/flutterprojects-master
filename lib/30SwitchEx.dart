import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: SwitchExample(),
    );
  }
}

class SwitchExample extends StatefulWidget {
  @override
  SwitchExampleState createState() => new SwitchExampleState();
}
class SwitchExampleState extends State {
  bool switchOn = false;

  void _onSwitchChanged(bool value) {
      if(switchOn == false){
        setState(() {
          switchOn = true;
        });
      }else{
        setState(() {
          switchOn = false;
        });
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Center(
        child:  Transform.scale(
          scale: 2.0,
          child: Switch(
            onChanged: _onSwitchChanged,
            value: switchOn,
            activeColor: Colors.blue,
            activeTrackColor: Colors.green,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.red,
            // activeThumbImage: Image.asset(
            //     'assets/images/superwomen.jpg'
            // ).image,
          ),
        ),
      ),
    );
  }
}
