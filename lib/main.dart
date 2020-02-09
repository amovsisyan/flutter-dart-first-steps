import 'package:flutter/material.dart';
import './Quiz.dart';
import './Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _totalScore = 0;
  int _questionIndex = 0;

  static const List<Map<String, Object>> _questions = const [
    {
      'question': 'Your favourite color ?',
      'answers': [
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 8},
        {'text': 'White', 'score': 2}
      ]
    },
    {
      'question': 'Your favourite fruits ?',
      'answers': [
        {'text': 'Apple', 'score': 5},
        {'text': 'Banana', 'score': 8},
        {'text': 'Grape', 'score': 2}
      ]
    },
    {
      'question': 'Your favourite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 8},
        {'text': 'Lion', 'score': 2}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My new Flutter'),
        ),
        body: (this._questionIndex < MyAppState._questions.length)
            ? Quiz(
                questions: MyAppState._questions,
                questionIndex: this._questionIndex,
                answerQuestion: this.answerQuestion)
            : ListFinished(onButtonClick: this.resetQuestionsList, totalScore: this._totalScore,),
      ),
    );
  }

  void answerQuestion(int score) {
    if (this._questionIndex <= MyAppState._questions.length - 1) {
      int questionIndex = this._questionIndex + 1;

      setState(() {
        this._questionIndex = questionIndex;
      });

      this._totalScore += score;
    }
  }

  void resetQuestionsList() {
    setState(() {
      this._questionIndex = 0;
      this._totalScore = 0;
    });
  }
}
