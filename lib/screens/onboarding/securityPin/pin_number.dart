import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/sizes_helpers.dart';

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
      width: displayWidth(context)/8.5,
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
      ),
    );
  }

}