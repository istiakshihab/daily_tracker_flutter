import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        child: RaisedButton(
          child: Text(answerText, style: TextStyle(fontSize: 18),),
          textColor: Colors.white,
          splashColor: Colors.red,
          color: Colors.blueAccent,
          onPressed: selectHandler,
        ));
  }
}
