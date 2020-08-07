import 'package:flutter/material.dart';

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
      home: Scaffold(
          appBar: AppBar(
            title: Text('Personality Quiz App'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  questions[_questionIndex],
                ),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: _answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: _answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: _answerQuestion,
                ),
              ],
            ),
          )),
    );
  }
}
