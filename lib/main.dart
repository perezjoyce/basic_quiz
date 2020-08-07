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
      "What's your favorite color?",
      "What's your favorite animal?",
      "What's your favorite subject?",
      "What's your favorite country?",
      "What's your favorite movie?",
      "What's your favorite music genra?",
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
                  questions[_questionIndex],
                ),
                Option('Option 1', _answerQuestion),
                Option('Option 2', _answerQuestion),
                Option('Option 3', _answerQuestion),
              ],
            ),
          )),
    );
  }
}
