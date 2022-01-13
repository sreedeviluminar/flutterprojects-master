import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: OrientationList(),
    );
  }
}

class OrientationList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid With Orientation")),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // Create a grid with 2 columns in portrait mode, or 3 columns in
            // landscape mode.
            crossAxisCount: orientation == Orientation.portrait ? 3 : 5,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(100, (index) {
              return Center(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://picsum.photos/500/500?random=$index',
                      width: 100,
                      height: 100,
                    ),
                    Text(
                      'Text $index',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              );
            }),
          );
        },
      ),
    );
  }
}