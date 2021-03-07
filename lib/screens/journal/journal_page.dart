import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class JournalPage extends StatefulWidget{
  @override
  _JournalState createState()=> _JournalState();
}

class _JournalState extends State<JournalPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('My Journal'),
      ),
    );
  }
}