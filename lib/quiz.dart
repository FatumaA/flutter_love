import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQues;
  final int questionIndex;

  Quiz({
      @required this.questions,
      @required this.answerQues,
      @required this.questionIndex
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Question(
            questions[questionIndex]['quesText'],
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
            return Answer(() => answerQues(answer['score']), answer['text']);
          }).toList()
        ],
      ),
    );
  }
}
