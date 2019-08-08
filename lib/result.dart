import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function reset;

  Result(this.result,this.reset);

  String get resultPhrase {
    var resultText;
    if (result < 8)
      resultText = "You are Gay";
    else if (result <= 16)
      resultText = "You're Mom Gay";
    else if (result <= 24)
      resultText = "Emo Goth Tiddy";
    else
      resultText = "What the fuck";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text("Restart Quiz"), onPressed: reset ,),
        ],
      ),
    );
  }
}
