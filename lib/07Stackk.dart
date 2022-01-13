import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      home: StackExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StackExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tutorial'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              textDirection: TextDirection.rtl,
              clipBehavior: Clip.hardEdge,
              children: [
                Container(
                    width: 120,
                    height: 150,
                    color: Colors.red,
                  child: Text('Red Space'),
                ),
                Container(
                    width: 150,
                    height: 50,
                    color: Colors.green,
                child: Center(
                  child: Text("Green")
                ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}