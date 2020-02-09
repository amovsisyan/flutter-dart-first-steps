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
            : ListFinished(onButtonClick: this.resetQuestionsList),
      ),
    );
  }

  void answerQuestion() {
    if (this._questionIndex <= MyAppState._questions.length - 1) {
      int questionIndex = this._questionIndex + 1;

      setState(() {
        this._questionIndex = questionIndex;
      });
    }

    print(this._questionIndex);
  }

  void resetQuestionsList() {
    setState(() {
      this._questionIndex = 0;
    });
  }
}
