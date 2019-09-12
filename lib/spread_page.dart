import 'package:flutter/material.dart';
import 'package:flutterapp/spread_widget.dart';

class SpreadPage extends StatefulWidget {
  @override
  _SpreadPageState createState() => _SpreadPageState();
}

class _SpreadPageState extends State<SpreadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SpreadPage'),
      ),
      body: Center(
        child: SpreadWidget(
          radius: 100,
          maxRadius: 350,
          child: Image.asset(
            'img/game3.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
