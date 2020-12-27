import 'package:flutter/cupertino.dart';

class Logo extends StatelessWidget {
  Logo();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'TeachMe Logo',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ));
  }
}
