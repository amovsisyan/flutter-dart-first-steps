import 'package:flutter/material.dart';
import './Question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}


class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  List<String> _questions = [
    'Your favourite color ?',
    'Your favourite animal ?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My new Flutter'),
        ),
        body: Column(
          children: [
            Question(this._questions[this._questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => this.answerQuestion(1),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => this.answerQuestion(2),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => this.answerQuestion(3),
            ),
          ],
        ),
      ),
    );
  }

  void answerQuestion(int answerId) {
    int questionIndex = 0;
    if (this._questionIndex <= this._questions.length - 2) {
      questionIndex = this._questionIndex + 1;
    }

    setState(() {
      this._questionIndex = questionIndex;
    });

    print(answerId);
    print(this._questionIndex);
  }
}