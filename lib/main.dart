import 'package:flutter/material.dart';

import 'package:flutter_app1/quiz.dart';
import 'package:flutter_app1/result.dart';

void main() {
  runApp(MyApp());
}

/*
var questions = [
  'What is your favorite color',
  'What is your hobby',
];
*/

var questions2 = [
  {
    'question': 'What\'s your favorite color?',
    'answers': [
      {'text': 'Red', 'score': 10},
      {'text': 'Green', 'score': 6},
      {'text': 'Blue', 'score': 3},
      {'text': 'White', 'score': 1}
    ]
  },
  {
    'question': 'What\'s your favorite animal?',
    'answers': [
      {'text': 'Rabbit', 'score': 4},
      {'text': 'Dog', 'score': 7},
      {'text': 'Snake', 'score': 8},
      {'text': 'Elephant', 'score': 10}
    ]
  },
  {
    'question': 'What is your hobby?',
    'answers': [
      {'text': 'Dancing', 'score': 3},
      {'text': 'Singing', 'score': 4},
      {'text': 'Reading', 'score': 5},
      {'text': 'Writing', 'score': 6}
    ]
  }
];

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _question = 0;
  var _totalScore = 0;

  void _resetState(){
    setState(() {
      _question =0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      if (_question < questions2.length ) {
        _question = _question + 1;
      } /*else {
        _question = 0;
        _totalScore =0;
      }*/
      print(_question);
      print(questions2.length);
    });

    print('Answer collected');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First App'),
          ),
          body: _question < questions2.length
              ? Quiz(questions2, _question, _answerQuestion)
              : Result(_totalScore, _resetState)),

    );
  }
}
