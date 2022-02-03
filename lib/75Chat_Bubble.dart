import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KindaCode.com',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatBubble'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nipWidth: 8,
              nipHeight: 24,
              nip: BubbleNip.rightTop,
              color: const Color.fromRGBO(225, 255, 199, 1.0),
              child: const Text('Hello, how are you?',
                  textAlign: TextAlign.right, style: TextStyle(fontSize: 17)),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nipWidth: 8,
              nipHeight: 24,
              nip: BubbleNip.leftTop,
              child: const Text(
                'I am fine. And you?',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topRight,
              nipWidth: 30,
              nipHeight: 10,
              nip: BubbleNip.rightTop,
              color: const Color.fromRGBO(225, 255, 199, 1.0),
              child: const Text('I am sick',
                  textAlign: TextAlign.right, style: TextStyle(fontSize: 17)),
            ),
            Bubble(
              margin: const BubbleEdges.only(top: 10),
              alignment: Alignment.topLeft,
              nipWidth: 30,
              nipHeight: 10,
              nip: BubbleNip.leftTop,
              child: const Text('Do you need help?',
                  style: TextStyle(fontSize: 17)),
            ),
          ],
        ),
      ),
    );
  }
}