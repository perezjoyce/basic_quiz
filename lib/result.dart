import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final int numberOfItems;

  Result(this.resultScore, this.numberOfItems);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'You got ' + resultScore.toString() + ' out of ' + numberOfItems.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
