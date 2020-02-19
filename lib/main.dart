import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MagicBall(),
  );
}

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text('Magic 8 Balls'),
          ),
          backgroundColor: Colors.blueAccent.shade400,
        ),
        body: Magic8Ball(),
      ),
    );
  }
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int magicBalls = 1;

  void rollBall() {
    setState(() {
      magicBalls = Random().nextInt(13) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                rollBall();
              },
              child: Image.asset('images/ball$magicBalls.png'),
            ),
          ),
        ],
      ),
    );
  }
}
