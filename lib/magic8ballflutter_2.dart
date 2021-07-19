import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: MagicBallStateless(),
    ),
  );
}

class MagicBallStateless extends StatelessWidget {
  const MagicBallStateless({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
          backgroundColor: Colors.blue[400],
          title: Center(
            child: Text(
              'Ask me anything you want!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: 'delaGothicOne',
              ),
            ),
          )),
      body: MagicBallStateful(),
    );
  }
}

int randomNumber() {
  return Random().nextInt(5) + 1;
}

class MagicBallStateful extends StatefulWidget {
  const MagicBallStateful({Key key}) : super(key: key);

  @override
  _MagicBallStatefulState createState() => _MagicBallStatefulState();
}

class _MagicBallStatefulState extends State<MagicBallStateful> {
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
            image: AssetImage('images/ball${randomNumber()}.png'),
          ),
        ),
      )),
    );
  }
}
