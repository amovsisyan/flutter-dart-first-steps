import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText = '';

  Question(this.questionText) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.questionText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 16, top: 8),
    );
  }
}
