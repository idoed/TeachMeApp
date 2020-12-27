import 'package:flutter/material.dart';
import './studentOrTeacher.dart';
import './login.dart';
import './logo.dart';
import './register.dart';
import './DataBaseHelper/Auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeachMe',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String page = 'login';
  void togglePage(String newPage) {
    setState(() {
      page = newPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TeachMe'),
      ),
      body: ListView(children: <Widget>[
        Container(
          child: Column(
            children: [
              Logo(),
              if (page == 'register') Register(togglePage),
              if (page == 'login') Login(togglePage)
            ],
          ),
        ),
      ]),
    );
  }
}
