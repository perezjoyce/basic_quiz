import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //final meaning value will never change after its initialization in the constructor
  final String questionText;

  //this.questionText is a positional argument because it's not wrapped in curly braces
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
