import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationBadge extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0.8,
      top: 0.8,
      child: Container(
        margin: EdgeInsets.only(top: 3, right: 6),
        padding: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.red,
        ),
        constraints: BoxConstraints(
          minWidth: 16,
          minHeight: 16,
        ),
        child: Text(
          '12',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.white
          ),
        ),
      ),
    );
  }

}