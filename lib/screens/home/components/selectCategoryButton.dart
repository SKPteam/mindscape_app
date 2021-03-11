import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectCategoryButton extends StatelessWidget{
  final String title;
  final Color color;
  final Function() onPressed;

  const SelectCategoryButton({Key key, this.title, this.color, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: 50,
          width: 150,
          padding: EdgeInsets.all(10.0),
          child: Center(child: Text(title, style: TextStyle(color: Colors.white, fontSize: 17),),),
          decoration: BoxDecoration(shape: BoxShape.rectangle, color: color, borderRadius: BorderRadius.circular(4.0)),
        ),
      ),
    );
  }

}