import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent[100],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.redAccent,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonNumber = 2;
  int rightButtonNumber = 2;

  void changeBothNumbers() {
    setState(() {
      leftButtonNumber = Random.secure().nextInt(6) + 1;
      rightButtonNumber = Random.secure().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftButtonNumber.png'),
              onPressed: changeBothNumbers,
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightButtonNumber.png'),
              onPressed: changeBothNumbers,
            ),
          )
        ],
      ),
    );
  }
}
