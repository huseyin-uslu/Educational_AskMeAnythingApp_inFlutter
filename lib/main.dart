import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(StatelessView());

class StatelessView extends StatelessWidget {
  const StatelessView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          backgroundColor: Colors.blue[500],
          title: Row(
            children: [
              Icon(
                Icons.android_sharp,
                color: Colors.white,
                size: 24.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, top: 0, right: 0, bottom: 0),
                child: Text(
                  "Ask me anything you like?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Center(child: StatefulView()),
        ),
      ),
    );
  }
}

class StatefulView extends StatefulWidget {
  const StatefulView({Key key}) : super(key: key);

  @override
  _StatefulViewState createState() => _StatefulViewState();
}

class _StatefulViewState extends State<StatefulView> {
  int randomImageNumber() {
    return Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {});
      },
      child: Image(
        image: AssetImage('images/ball${randomImageNumber()}.png'),
      ),
    );
  }
}
