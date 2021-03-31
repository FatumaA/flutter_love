import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(FlutterLove());

class FlutterLove extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // throw UnimplementedError();
    return _FlutterLoveState();
  }
}

class _FlutterLoveState extends State<FlutterLove> {
  var _questionIndex = 0;

  void _answerQues() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'quesText': 'What is your fav color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'quesText': 'What is your fav animal?',
        'answers': ['Rabbit', 'Dove', 'Horse', 'Dolphin'],
      },
      {
        'quesText': 'Who is your fav youtube instructor?',
        'answers': ['Max', 'Gary', 'Brad', 'Ed'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['quesText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQues, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
