import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: BallPage(),
    ));

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ball(),
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = randomBallNumber();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball$ballNumber.png'),
        onPressed: refreshMessage,
      ),
    );
  }

  static int randomBallNumber() {
    return Random().nextInt(5) + 1;
  }

  refreshMessage() {
    setState(() {
      ballNumber = randomBallNumber();
    });
  }
}
