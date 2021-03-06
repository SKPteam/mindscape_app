import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/sizes_helpers.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Image.asset(
          image,
          height: displayHeight(context)*0.4,
          width: displayWidth(context)*1,
        ),
        Container(
          margin: EdgeInsets.only(top:displayWidth(context)*0.1),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
