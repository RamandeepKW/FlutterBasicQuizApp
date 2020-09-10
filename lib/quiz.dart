

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget{
  final  questions;
  final _questionIndex;
  final _answerQuestion;
  Quiz(@required this.questions, @required this._questionIndex, @required this._answerQuestion);


  @override
  Widget build(BuildContext context) {
   return Column(
       children: [
         Question(questions[_questionIndex]['question']),
         ... (questions[_questionIndex]['answers'] as List<Map<String, Object>>).map((answer) =>
             Answer(answer['text'], ()=> _answerQuestion(answer['score']))
         ).toList(),
       ]
   );
  }

}