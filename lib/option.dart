import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  //final is a runtime constant value; it can't change at runtime
  final String optionText;
  final Function selectHandler;

  Option(this.optionText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: RaisedButton(
        color: Colors.red,
        textColor: Colors.white,
        splashColor: Colors.white,
        child: Text(optionText),
        onPressed: selectHandler,
      ),
    );
  }
}
