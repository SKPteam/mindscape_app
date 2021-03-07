import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget{
  final String image, name, category, type, time, date;
  final GestureTapCallback onPressed;

  const AppointmentCard({
    Key key,
    this.image,
    this.name,
    this.category,
    this.type,
    this.time,
    this.date,
    this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.only(left: size.width*(0.2)),
        child: GestureDetector(
          onTap: onPressed,
          child: SizedBox(
            width: 50,
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.asset(
                    image,
                    width: size.height*20,
                    height: size.width*20,
                  )
                ],
              ),
            ),
          ),
        )
    );
  }}