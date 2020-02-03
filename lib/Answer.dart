import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onAnswer;
  final String text;

  Answer({this.onAnswer, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(this.text),
        textColor: Colors.white,
        onPressed: this.onAnswer,
        color: Colors.blue,
      ),
      width: double.infinity,
    );
  }
}
