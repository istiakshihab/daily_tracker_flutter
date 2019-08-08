import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestions;
  final List<Map<String, Object>> questions;
  final int questionIdx;

  Quiz({
    @required this.questions,
    @required this.answerQuestions,
    @required this.questionIdx,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIdx]["questionText"],
        ),
        ...(questions[questionIdx]['answerText'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestions(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
