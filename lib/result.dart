import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuizHandler;

  Result(this.resultScore, this.resetQuizHandler);

  String get resultPhrase {
    String resulttext;
    if (resultScore <= 8) {
      resulttext = 'You are an awesome person!!!';
    } else if (resultScore <= 16) {
      resulttext = 'You are a pretty good person!!!';
    } else if (resultScore <= 24) {
      resulttext = 'mmmmh... pretty strange person!!!';
    } else {
      resulttext = 'You are one strange cookie!!!';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuizHandler,
            child: Text('Restart The Quiz'),
            textColor: Colors.blue[300],
          )
        ],
      ),
    );
  }
}
