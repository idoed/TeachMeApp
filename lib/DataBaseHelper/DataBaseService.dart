
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference StudentCollection = Firestore.instance.collection('Students');

  Future<void> updateUserData(String nickname, int phoneNumber, String dagree) async {
    // ignore: deprecated_member_use
    return await StudentCollection.document(uid).setData({
      'nickname': nickname,
      'phoneNumber': phoneNumber,
      'strength': dagree,
    });
  }
}