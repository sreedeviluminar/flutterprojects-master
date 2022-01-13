import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: OrientationList(
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('UI Orientation'),
          backgroundColor: Colors.green),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(

            //grid with 3 and 4 columns for portrait and landscape mode respectively
            crossAxisCount: orientation == Orientation.portrait ? 3 : 4,

            // random item generator
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Grid $index',
                  style: Theme.of(context).textTheme.headline4,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
