import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './DataBaseHelper/DataBaseService.dart';
import 'DataBaseHelper/Auth.dart';

//import 'package:international_phone_input/international_phone_input.dart';

class Profile extends StatelessWidget {
  //  onValidPhoneNumber(
  //     String number, String internationalizedPhoneNumber, String isoCode) {
  //   setState(() {
  //     confirmedNumber = internationalizedPhoneNumber;
  //   });
  // }
  AuthService auth = AuthService();
  DatabaseService db = DatabaseService();
  final userNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final degreeNameController = TextEditingController();
  // final String userId;

  final Function togglePage;
  Profile(this.togglePage);
//   //select degree optional implement: map with degreeName key and list of names
//   //final degree = {'degreeName':[]};
//   //degree['degreeName'] will return this list

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // FlatButton(onPressed: () => {}, child: Text('הירשם')
        Padding(
          padding: const EdgeInsets.fromLTRB(140, 50, 0, 50),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 61,
                child: ClipOval(
                  child: Image.asset(
                    'https://www.pexels.com/photo/man-in-toga-holding-diploma-1007066/',
                    height: 150,

                    // fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  bottom: 100,
                  right: 50,
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ))
            ],
          ),
        ),
        Expanded(
            child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 250, 20, 4),
                child: Container(
                  height: 60,
                  child: TextField(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                        labelText: 'שם מלא',
                        icon: Icon(Icons.person, color: Colors.blue)),
                    controller: userNameController,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 1.0, color: Colors.blue)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: TextField(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                        labelText: 'מספר פלאפון',
                        icon: Icon(Icons.local_phone, color: Colors.blue)),
                    controller: phoneNumberController,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 1.0, color: Colors.blue)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: TextField(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                        labelText: 'בחר/י תואר',
                        icon: Icon(Icons.school, color: Colors.blue)),
                    controller: degreeNameController,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 1.0, color: Colors.blue)),
                ),
              ),
              Container(
                  child: FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('עדכן פרטים '),
              )),
            ],
          ),
        )),
        //     Scaffold(
        //     body: Center(
        //    child:  InternationalPhoneInputText(
        //      onValidPhoneNumber: onValidPhoneNumber,
        //     ),
        //  ),
        //  ),
      ],
    );
  }
}
