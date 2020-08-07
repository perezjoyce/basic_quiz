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

  //const because it's compile-time constant; it will never change
  //the values in this variable cannot be changed
  final _questions = const [
    {
      'questionText': "What's your favorite color?",
      'options': ['red', 'green', 'blue'],
    },
    {
      'questionText': "What's your favorite animal?",
      'options': ['dog', 'cat', 'rat'],
    },
    {
      'questionText': "What's your favorite subject?",
      'options': ['English', 'Math', 'Science'],
    },
    {
      'questionText': "What's your favorite country?",
      'options': ['Philippines', 'Not Philippines', 'Mars'],
    },
    {
      'questionText': "What's your favorite movie?",
      'options': ['Avengers', 'Maudie', 'Little Women'],
    },
    {
      'questionText': "What's your favorite color?",
      'options': ['pop', 'rock', 'opm'],
    },
  ];

  void _answerQuestion() {
    //calls build of widget where it is located
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    // if (_questionIndex < _questions.length) {}
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personality Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz App'),
        ),
        body: Center(
          child: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion,
                )
              : Result(),
        ),
      ),
    );
  }
}
