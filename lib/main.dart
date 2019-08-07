import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIdx = 0;
  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?",
  ];

  void answerQuestions() {
    questionIdx++;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Testing"),
        ),
        body: Column(
          children: [
            Text(questions[questionIdx]),
            RaisedButton(
              child: Text('Fuckface 1'),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text('Fuckface 2'),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text('Fuckface 3'),
              onPressed: answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
