import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  static const List<Map<String, Object>> _questions = const [
    {
      'question': 'Your favourite color ?',
      'answers': ['Red', 'Blue', 'White']
    },
    {
      'question': 'Your favourite fruits ?',
      'answers': ['Apple', 'Banana', 'Grape']
    },
    {
      'question': 'Your favourite animal ?',
      'answers': ['Rabbit', 'Snake', 'Lion']
    }
  ];

  @override
  Widget build(BuildContext context) {
    Map<String, Object> question = MyAppState._questions[this._questionIndex];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My new Flutter'),
        ),
        body: Column(
          children: [
            Question(question['question']),
            ...(question['answers'] as List<String>).map((answerText) {
              return Answer(onAnswer: this.answerQuestion, text: answerText);
            }).toList()
          ],
        ),
      ),
    );
  }

  void answerQuestion() {
    int questionIndex = 0;
    if (this._questionIndex <= MyAppState._questions.length - 2) {
      questionIndex = this._questionIndex + 1;
    }

    setState(() {
      this._questionIndex = questionIndex;
    });

    print(this._questionIndex);
  }
}
