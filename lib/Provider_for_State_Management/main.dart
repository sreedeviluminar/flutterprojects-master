// main.dart
import 'package:flutter/material.dart';
import 'package:flutterprojects/Provider_for_State_Management/provider/movie_provider.dart';
import 'package:flutterprojects/Provider_for_State_Management/screens/HomeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<MovieProvider>(
    child: const MyApp(),
    create: (_) => MovieProvider(), // Create a new ChangeNotifier object
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Provider Example',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomeScreenprovider(),
    );
  }
}
