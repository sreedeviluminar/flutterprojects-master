import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(WakelockExampleApp());
}

class WakelockExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Strike Through Text'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '\$7',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ' \$10 ',
                style: TextStyle(
                    fontSize: 35,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey),
              ),
              Text(
                '(Save 30%)',
                style: TextStyle(fontSize: 35, color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
