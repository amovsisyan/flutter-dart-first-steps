import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}


class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  List<String> questions = [
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
            Text(this.questions[this.questionIndex]),
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
    if (this.questionIndex <= this.questions.length - 2) {
      questionIndex = this.questionIndex + 1;
    }

    setState(() {
      this.questionIndex = questionIndex;
    });

    print(answerId);
    print(this.questionIndex);
  }
}