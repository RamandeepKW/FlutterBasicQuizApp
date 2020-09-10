import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function answerQuestion;

  Answer(this.answer, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        width: double.infinity,
        child: RaisedButton(
          padding: EdgeInsets.all(10),
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answer,
              style: TextStyle(
                fontSize: 18,
              )),
          onPressed: this.answerQuestion,
        ));
  }
}
