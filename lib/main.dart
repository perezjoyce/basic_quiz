import 'package:flutter/material.dart';

import './question.dart';
import './option.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

// rebuilt
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//persists
class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  //const because it's compile-time constant; it will never change
  //the values in this variable cannot be changed
  final _questions = const [
    {
      'questionText': "What's your favorite color?",
      'options': [
        {'text': 'red', 'score': 1},
        {'text': 'blue', 'score': 0},
        {'text': 'green', 'score': 0},
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'options': [
        {'text': 'dog', 'score': 0},
        {'text': 'cat', 'score': 1},
        {'text': 'bird', 'score': 0},
      ],
    },
    {
      'questionText': "What's your favorite subject?",
      'options': [
        {'text': 'Math', 'score': 0},
        {'text': 'English', 'score': 0},
        {'text': 'Science', 'score': 1},
      ],
    },
  ];

  void _answerQuestion(int score) {
    //calls build of widget where it is located

    setState(() {
      _totalScore += score;
      _questionIndex = _questionIndex + 1;
    });

    print("totalScore");
    print(_totalScore);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic Quiz App'),
        ),
        body: Center(
          child: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion,
                )
              : Result(
                  resultScore: _totalScore,
                  numberOfItems: _questions.length,
                  resetHandler: _resetQuiz,
                ),
        ),
      ),
    );
  }
}
