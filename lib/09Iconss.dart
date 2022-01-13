import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Icon Demo'),
            backgroundColor: Colors.green,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.grade)),
                Tab(icon: Icon(Icons.email)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(
                  Icons.music_note,
                  size: 100,
                  color:Colors.blue,),
              Icon(Icons.music_video,
                  color: Colors.blue,
                  size: 100),
              Icon(Icons.camera_alt,
                  semanticLabel: 'Camera',
                  size: 100),
              Icon(Icons.grade,
                color: Colors.red,
                size: 300,
                semanticLabel: 'Star',),
              Icon(Icons.email),
            ],
          ),
        ),
      ),
    );
  }
}
