import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './DataBaseHelper/Auth.dart';
import './question.dart';
import './answer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState
    return _MyAppState();
  }
}

//underscore '_' befre the class\function\property name = private
class _MyAppState extends State<MyApp> {

  final AuthService _auth= AuthService();
  int _questionIndex = 0;
  //we cannot place functions here since build is being called,
  //so functions declared here would not be known to the compiler
  void _function() {
    print('Answer Chosen');
  }

  void _rolePicked() {
    print('role picked');
  }

  @override
  Widget build(BuildContext context) {
    // Firebase.initializeApp();
    return MaterialApp(

      home: Scaffold(
          appBar: AppBar(
            title: Text('TeachMe'),
          ),
          body: Column(
            // arranges the children array in a column - invisible Widget
            children: [
              //now we can use Question class instead of Text (not that useful here):
              // Text(questions[_questionIndex]),
              Question('Who are you?'),
              Answer('Student', _rolePicked),
              Answer('Teacher', _rolePicked),
              Answer('signInAnony',_auth.signInAnon)
            ],
          )),
    );
  }
}