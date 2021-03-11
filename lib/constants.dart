import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/sizes_helpers.dart';

const kPrimaryColor = Colors.green;
const kPrimaryDarkColor = Color(0xff266C29);
const kPrimaryAccentColor = Color(0xffc9d8cd);
const kPrimaryLightColor = Color(0xfffffff);
const kPrimaryGradientColor = LinearGradient(colors:
  [Color(0xFFFFA53E), Color(0xFFFF7643)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
const kSecondaryColor = Color(0xffFFE100);
const kTextColor = Color(0xffffffff);

const kAnimationDuration = Duration(milliseconds: 200);

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";