import 'package:flutter/material.dart';

void main() => runApp(FlutterLove());

class FlutterLove extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _FlutterLoveState();
  }
}
class _FlutterLoveState extends State<FlutterLove>{
  var _questionIndex = 0;

  void _answerQues() {
    setState(() {
      _questionIndex = _questionIndex + 1; 
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your fav color?',
      'What is your fav animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: Column(
          children: [
            Text(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQues,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
