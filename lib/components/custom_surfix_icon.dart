import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mindscape_app/sizes_helpers.dart';

class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        displayWidth(context)*0.020,
        displayWidth(context)*0.01,
        displayWidth(context)*0.015,
        displayWidth(context)*0.01,
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: displayWidth(context)*0.018,
      ),
    );
  }
}
