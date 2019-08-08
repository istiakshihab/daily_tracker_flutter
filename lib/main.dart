import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;

  var _totalScore = 0;

  static const _questions = [
    {
      'questionText': "What's your favorite color?",
      'answerText': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Black', 'score': 7},
        {'text': 'Red', 'score': 3},
        {'text': 'White', 'score': 0},
      ]
    },
    {
      'questionText': "What's your favorite animal?",
      'answerText': [
        {'text': 'Cow', 'score': 10},
        {'text': 'Cat', 'score': 7},
        {'text': 'Dog', 'score': 3},
        {'text': 'Snake', 'score': 0},
      ]
    },
    {
      'questionText': "Who's your favorite singer?",
      'answerText': [
        {'text': 'Jon', 'score': 10},
        {'text': 'Juan', 'score': 7},
        {'text': 'Jony', 'score': 3},
        {'text': 'Jessie', 'score': 0},
      ]
    },
  ];

  void _answerQuestions(int score) {
    _totalScore += score;

    setState(() {
      _questionIdx++;
    });
    print(_questionIdx);
    if (_questionIdx < _questions.length) {}
  }

  void _resetQuiz() {
    setState(() {
      _questionIdx = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Testing"),
          ),
          body: _questions.length > _questionIdx
              ? Quiz(
                  answerQuestions: _answerQuestions,
                  questions: _questions,
                  questionIdx: _questionIdx,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
