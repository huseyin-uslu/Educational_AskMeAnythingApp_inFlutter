import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: AskMeStateless(),
    ),
  );
}

int number = 0;
int getARandomAnswer() {
  int randomNumber = Random().nextInt(5) + 1;

  return randomNumber;
}

class AskMeStateless extends StatelessWidget {
  const AskMeStateless({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Center(
          child: Text(
            "Ask me anything you want!",
            style: TextStyle(
              color: Colors.blueGrey[900],
              fontSize: 20,
              fontFamily: 'delaGothicOne',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: AskMeAnythingApp(),
    );
  }
}

class AskMeAnythingApp extends StatefulWidget {
  const AskMeAnythingApp({Key key}) : super(key: key);

  @override
  _AskMeAnythingAppState createState() => _AskMeAnythingAppState();
}

class _AskMeAnythingAppState extends State<AskMeAnythingApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  print(getARandomAnswer().toString());
                });
              },
              child: Image(
                image: AssetImage('images/ball${getARandomAnswer()}.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
