import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'DataBaseHelper/Auth.dart';

class Register extends StatelessWidget {
  final userNameController = TextEditingController();
  final passwrodController1 = TextEditingController();
  final passwrodController2 = TextEditingController();
  AuthService auth = AuthService();

  var passwordsMismatch = false;
  final Function togglePage;
  User user;

  void loginRequest(String username, String password1, String password2) {
    if (password1 != password2) {
      passwordsMismatch = true;
    } else {
      print(username + '@post.bgu.ac.il' + ' ' + password1 + ' ' + password2);
      auth.registerWithEmailAndPassword(
          username + '@post.bgu.ac.il', password1);
    }
  }

  Register(this.togglePage);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.grey[200],
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 30),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Column(
                textDirection: TextDirection.rtl,
                children: [
                  TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        labelText: 'שם משתמש',
                        icon: Icon(Icons.supervised_user_circle,
                            color: Colors.blue),
                        hintText: '<username>@post.bgu.ac.il'),
                    controller: userNameController,
                  ),
                  TextField(
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                        labelText: 'הכנס סיסמא',
                        icon: Icon(Icons.lock, color: Colors.blue)),
                    controller: passwrodController1,
                    obscureText: true,
                  ),
                  TextField(
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                        labelText: 'הכנס סיסמא בשנית',
                        icon: Icon(Icons.lock, color: Colors.blue)),
                    controller: passwrodController2,
                    obscureText: true,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5, top: 40),
                    child: FlatButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: () => {
                              togglePage('profile'),
                              loginRequest(
                                  userNameController.text,
                                  passwrodController1.text,
                                  passwrodController2.text),
                            },
                        child: Text('הירשם')),
                  )
                ],
              ),
            ),
          ),
        ),
        FlatButton(
            textColor: Colors.blue,
            onPressed: () => {togglePage('login')},
            child: Text('חזרה להתחברות')),
        if (passwordsMismatch) Text('הסיסמאות אינן תואמות')
      ],
    );
  }
}
