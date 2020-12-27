import 'package:flutter/material.dart';

class StudentOrTeacher extends StatelessWidget {
  StudentOrTeacher();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [Text('Student'), Text('Teacher')],
    ));
  }
}
