import 'package:flutter/material.dart';
import 'DataBaseHelper/Auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatelessWidget {
  AuthService auth = AuthService();
  final userNameController = TextEditingController();
  final passwrodController = TextEditingController();

  final Function togglePage;
  void loginRequest(String username, String password) {
    auth
        .signInWithEmailAndPassword(username + '@post.bgu.ac.il', password)
        .then((value) => print('success'));
  }

  Login(this.togglePage);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(
        color: Colors.grey[200],
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 30),
        child: Padding(
          padding: const EdgeInsets.all(15),
          // padding: EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            child: Column(
              children: [
                TextField(
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                      labelText: 'שם משתמש',
                      icon: Icon(Icons.supervised_user_circle_sharp,
                          color: Colors.blue)),
                  controller: userNameController,
                ),
                TextField(
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                      labelText: 'סיסמא',
                      icon: Icon(Icons.lock, color: Colors.blue)),
                  controller: passwrodController,
                  obscureText: true,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5, top: 40),
                  child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () => {
                            (loginRequest(userNameController.text,
                                passwrodController.text)),
                          },
                      child: Text('התחבר')),
                ),
                FlatButton(
                    textColor: Colors.blue,
                    onPressed: () => {
                          (loginRequest(userNameController.text,
                              passwrodController.text)),
                          togglePage('login')
                        },
                    child: Text(
                      'שכחת סיסמא?',
                      textDirection: TextDirection.rtl,
                    ))
              ],
            ),
          ),
        ),
      ),
      FlatButton(
          textColor: Colors.blue,
          onPressed: () => {
                (loginRequest(
                    userNameController.text, passwrodController.text)),
                togglePage('register'),
              },
          child: Text(
            ' עוד לא נרשמת? לחץ כאן להרשמה',
            style: TextStyle(fontWeight: FontWeight.bold),
            textDirection: TextDirection.rtl,
          ))
    ]);
  }
}
