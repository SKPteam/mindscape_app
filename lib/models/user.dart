import 'package:firebase_database/firebase_database.dart';

class UserModel{
  static const ID = 'id';
  static const EMAIL = 'email';

  String _id;
  String _email;

  // GETTERS
  String get id => _id;
  String get email => _email;

  // UserModel.fromSnapshot(DataSnapshot ds){
  //   _id = ds.data[ID];
  //   _email = ds.data[EMAIL];
  // }
}