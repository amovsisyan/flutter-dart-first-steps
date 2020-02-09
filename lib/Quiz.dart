import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(this.questions[this.questionIndex]['question']),
      ...(this.questions[this.questionIndex]['answers'] as List<String>)
          .map((answerText) {
        return Answer(onAnswer: this.answerQuestion, text: answerText);
      }).toList()
    ]);
  }
}
