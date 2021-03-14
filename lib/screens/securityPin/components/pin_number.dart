import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PINNumber extends StatelessWidget{

  final TextEditingController textEditingController;
  final OutlineInputBorder outlineInputBorder;

  const PINNumber({
    Key key,
    this.textEditingController,
    this.outlineInputBorder
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      child: TextField(
        controller: textEditingController,
        enabled: false,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16.0),
          border: outlineInputBorder,
          filled: true,
          fillColor: Colors.white30
        ),
        style: TextStyle(
          fontSize: 21.0,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
    );
  }

}