import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Splashhh',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: Icons.home,
            nextScreen: MainScreen(),
            splashTransition: SplashTransition.sizeTransition,
            backgroundColor: Colors.brown
        )
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Image.asset('assets/images/superwomen.jpg'),
    ),
    );
  }
}