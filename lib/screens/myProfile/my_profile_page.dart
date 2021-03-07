import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyProfilePage extends StatefulWidget{
  @override
  _MyProfileState createState()=> _MyProfileState();
}

class _MyProfileState extends State<MyProfilePage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('My Profile'),
      ),
    );
  }
}