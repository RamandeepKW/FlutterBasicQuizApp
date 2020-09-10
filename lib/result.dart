import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetState;

  Result(this.totalScore, this.resetState);

  String get resultPhrase {
    String resultMsg;
    if (totalScore <= 8) {
      resultMsg = 'You are awesome and innocent';
    } else if (totalScore <= 20) {
      resultMsg = 'You are good personality';
    } else {
      resultMsg = 'You are different!';
    }
    return resultMsg;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(
            onPressed: resetState,
            child: Text(
              'Restart Quiz!',
            ),
        textColor: Colors.blue,)
      ]),
    );
  }
}
