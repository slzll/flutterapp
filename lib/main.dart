import 'package:flutter/material.dart';
import 'package:flutterapp/randomWords.dart';
// import 'randomWords.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.purple,
      ),
      home: new RandomWords(),
    );
  }
}
