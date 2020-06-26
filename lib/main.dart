import 'package:flutter/material.dart';
import 'dart:math';
import 'package:shake/shake.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything :) '),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        body: MagicBallPage(),
      ),
    );
  }
}

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ans = 1;

  void answers()
  {
    setState(() {
      ans = Random().nextInt(5)+1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              'Ask a question and get your answer !',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Center(
            child: FlatButton(
                child: Image.asset('images/ball$ans.png'),
                    onPressed: () {
                      answers();
                    },
            ),
          ),
        ],
      ),
    );
  }
}
