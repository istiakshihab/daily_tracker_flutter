import 'package:flutter/cupertino.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        margin: EdgeInsets.all(3),
        child: CupertinoButton(
          color: CupertinoColors.activeBlue,
          child: Text(answerText,),
          onPressed: selectHandler,
        ));
  }
}
