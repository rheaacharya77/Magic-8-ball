import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue.shade400,
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          title: Center(child: Text('Ask Me Anything')),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            setState(
              () {
                ballNumber = Random().nextInt(5) + 1;
                print(ballNumber);
              },
            );
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ],
    );
  }
}
