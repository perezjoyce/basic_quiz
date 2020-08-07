import 'package:flutter/material.dart';

import './question.dart';
import './option.dart';

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

  void _answerQuestion() {
    //calls build of widget where it is located
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Question(
                  questions[_questionIndex]['questionText'],
                ),
                ...(questions[_questionIndex]['options'] as List<String>).map((option) {
                  return Option(option, _answerQuestion);
                }).toList()
              ],
            ),
          )),
    );
  }
}
