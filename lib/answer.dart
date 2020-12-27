import 'package:flutter/material.dart';

//creating a reusable button widget
//we can pass text and a function pointer to it
class Answer extends StatelessWidget {
  @override
  final String answer;
  final Function onPressedFunction;

  Answer(this.answer, this.onPressedFunction);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        child: Text(answer),
        color: Colors.blue,
        onPressed: onPressedFunction,
      ),
    );
  }
}