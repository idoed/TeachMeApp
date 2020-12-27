//its a good convesion to have ONE widget for each file
//we are creating a Question class which will be used in the main class
import 'package:flutter/material.dart';

//this class is not private since we want to use it in main.dart
class Question extends StatelessWidget {
  //uninitilized properties
  //good convension to add 'final'
  final String questionText;
  //constructor
  //using this.questionText is a short cut for -
  //the passed argument will automatically be assigned to that property.
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    //styling the Tet widget - style argument

    return Container(
      //this makes the container take up the full width of the screen
      width: double.infinity,
      margin: EdgeInsets.all(30),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
        //this alone doen't center the text relativley to the screen
        //is centers it relatively to the widget, but this widget
        //doesn't take the entire screen's width, thats why it's not centered
        //we need a container for that who's width takes up the entire screen
      ),
    );
  }
}
