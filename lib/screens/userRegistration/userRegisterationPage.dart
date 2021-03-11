import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/constants.dart';
import 'package:mindscape_app/screens/userRegistration/completeRegistrationPage.dart';

import '../../sizes_helpers.dart';

class UserRegistrationPage extends StatefulWidget{
  static const String idScreen = 'userRegister';

  @override
  _UserRegistrationState createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistrationPage>{

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPwdTextEditingController = TextEditingController();

  //final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirmPwd;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          //resizeToAvoidBottomPadding: false,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text("Sign Up", style:
            TextStyle(
                color: Color(0xffBEBEBE)
            ),),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/i_am_a_img.png'),
                  colorFilter: ColorFilter.mode(Color(0xff777474), BlendMode.multiply),
                  fit: BoxFit.cover
              ),
            ),
            child: ListView(
              children: [
                Padding(padding: EdgeInsets.symmetric(
                    horizontal: displayWidth(context)*0.1),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: displayHeight(context) * 0.08), // 4%
                          Text("Register Account", style: TextStyle(
                            fontSize: displayWidth(context)/14,
                            color: Colors.white,
                            height: displayHeight(context)*0.0015,
                          )),
                          SizedBox(height: displayHeight(context) * 0.01),
                          Text(
                              "Complete your details",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffDDDDDD),
                                fontSize: displayWidth(context)/32
                              )
                          ),
                          SizedBox(height: displayHeight(context) * 0.08),
                          Form(
                              child: Column(
                                children: [
                                  buildEmailFormField(),
                                  SizedBox(height: displayHeight(context)*0.020),
                                  buildPasswordFormField(),
                                  SizedBox(height: displayHeight(context)*0.020),
                                  buildConformPassFormField(),
                                  SizedBox(height: displayHeight(context)*0.045),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(onPressed: (){
                                      Navigator.pushNamedAndRemoveUntil(context, CompleteRegistrationScreen.idScreen, (route) => false);
                                    },
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                                            primary: kPrimaryColor
                                        ),child: Text('Next',style: TextStyle(
                                            color: Colors.white,
                                          fontSize: displayWidth(context)/28,
                                        ),)),
                                  ),
                                  SizedBox(height: displayHeight(context)*0.15),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child: Column(
                                          children: [
                                            Text('By clicking Next, you are indicating that you have read', textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: displayWidth(context)/30
                                              )
                                            ),
                                            Row(
                                              children: [
                                                Text('and agreed to the ', textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: displayWidth(context)/30
                                                    )
                                                ),
                                                Text('Terms of Service ', textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: kSecondaryColor,
                                                        fontSize: displayWidth(context)/30
                                                    )
                                                ),
                                                Text('and ', textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: displayWidth(context)/30
                                                    )
                                                ),
                                                Text('Privacy Policy', textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: kSecondaryColor,
                                                        fontSize: displayWidth(context)/30
                                                    )
                                                )
                                              ],
                                            )
                                          ]
                                        )
                                      )
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ))
              ],
            ),
          ),
        )
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailTextEditingController,
      keyboardType: TextInputType.emailAddress,
      //onSaved: (newValue) => email = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kEmailNullError);
      //   } else if (emailValidatorRegExp.hasMatch(value)) {
      //     removeError(error: kInvalidEmailError);
      //   }
      //   return null;
      // },
      // validator: (value) {
      //   if (value.isEmpty) {
      //     addError(error: kEmailNullError);
      //     return "";
      //   } else if (!emailValidatorRegExp.hasMatch(value)) {
      //     addError(error: kInvalidEmailError);
      //     return "";
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        fillColor: Colors.white,
        border: InputBorder.none,
        filled: true,
        hintText: "Enter your email",
        hintStyle: TextStyle(fontSize: displayWidth(context)/25, color: Colors.grey),
        contentPadding: new EdgeInsets.symmetric(vertical: 25.0, horizontal: displayWidth(context)*0.04),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //prefixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordTextEditingController,
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      // onSaved: (newValue) => password = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kPassNullError);
      //   } else if (value.length >= 6) {
      //     removeError(error: kShortPassError);
      //   }
      //   password = value;
      // },
      // validator: (value) {
      //   if (value.isEmpty) {
      //     addError(error: kPassNullError);
      //     return "";
      //   } else if (value.length < 6) {
      //     addError(error: kShortPassError);
      //     return "";
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        //labelText: "Password",
        hintText: "Enter your password",
        hintStyle: TextStyle(fontSize: displayWidth(context)/25, color: Colors.grey),
        fillColor: Colors.white,
        border: InputBorder.none,
        filled: true,
        contentPadding: new EdgeInsets.symmetric(vertical: 25.0, horizontal: displayWidth(context)*0.04),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //prefixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
      controller: confirmPwdTextEditingController,
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      // onSaved: (newValue) => confirmPwd = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kPassNullError);
      //   } else if (value.isNotEmpty && password == confirmPwd) {
      //     removeError(error: kMatchPassError);
      //   }
      //   confirmPwd = value;
      // },
      // validator: (value) {
      //   if (value.isEmpty) {
      //     addError(error: kPassNullError);
      //     return "";
      //   } else if ((password != value)) {
      //     addError(error: kMatchPassError);
      //     return "";
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        //labelText: "Confirm Password",
        hintText: "Re-enter your password",
        hintStyle: TextStyle(fontSize: displayWidth(context)/25, color: Colors.grey),
        fillColor: Colors.white,
        border: InputBorder.none,
        filled: true,
        contentPadding: new EdgeInsets.symmetric(vertical: 25.0, horizontal: displayWidth(context)*0.04),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //prefixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

}

