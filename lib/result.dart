import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final int numberOfItems;
  final Function resetHandler;

  Result({
    this.resultScore,
    this.numberOfItems,
    this.resetHandler,
  });

  String get resultPhrase {
    String resultText;

    switch (resultScore) {
      case 1:
        resultText = 'Try again!';
        break;
      case 2:
        resultText = 'Way to go!';
        break;
      case 3:
        resultText = 'Congratulations!';
        break;
      default:
        resultText = 'Good Job!';
        break;
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'You got ' + resultScore.toString() + ' out of ' + numberOfItems.toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        FlatButton(
          child: Text('Restart Quiz'),
          onPressed: resetHandler,
        ),
      ],
    );
  }
}
