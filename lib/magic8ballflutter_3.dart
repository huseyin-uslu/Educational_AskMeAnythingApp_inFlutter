import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallStateless(),
    ),
  );
}

class BallStateless extends StatelessWidget {
  const BallStateless({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
            child: Text(
          'Ask me anything you want !',
          style: TextStyle(
            fontFamily: 'delaGothicOne',
            fontWeight: FontWeight.bold,
            color: Colors.blue[100],
          ),
        )),
      ),
      body: BallStateful(),
    );
  }
}

int GiveMeRandomNumber() {
  return Random().nextInt(5) + 1;
}

class BallStateful extends StatefulWidget {
  const BallStateful({Key key}) : super(key: key);

  @override
  _BallStatefulState createState() => _BallStatefulState();
}

class _BallStatefulState extends State<BallStateful> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
            onPressed: () {
              setState(() {});
            },
            child: Image(
              image: AssetImage('images/ball${GiveMeRandomNumber()}.png'),
            ),
          ),
        ),
      ),
    );
  }
}
