import 'package:flutter/material.dart';

class ListFinished extends StatelessWidget {
  final Function onButtonClick;

  ListFinished({this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Text(
              'All Done',
              style: TextStyle(
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.only(bottom: 16, top: 8),
          ),
          RaisedButton(
            child: Text('Reset Game'),
            textColor: Colors.white,
            onPressed: this.onButtonClick,
            color: Colors.blue,
          ),
        ],
      ),
      width: double.infinity,
    );
  }
}
