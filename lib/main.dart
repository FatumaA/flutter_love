import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(FlutterLove());

class FlutterLove extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // throw UnimplementedError();
    return _FlutterLoveState();
  }
}

class _FlutterLoveState extends State<FlutterLove> {
  final _questions = const [
    {
      'quesText': 'What is your fav color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 5}
      ],
    },
    {
      'quesText': 'What is your fav animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Dove', 'score': 2},
        {'text': 'Horse', 'score': 5},
        {'text': 'Dolphin', 'score': 7}
      ],
    },
    {
      'quesText': 'Who is your fav youtube instructor?',
      'answers': [
        {'text': 'Max', 'score': 3},
        {'text': 'Gary', 'score': 9},
        {'text': 'Brad', 'score': 7},
        {'text': 'Ed', 'score': 10}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQues(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQues: _answerQues,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
