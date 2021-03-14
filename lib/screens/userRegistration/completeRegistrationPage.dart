import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/screens/signInPage.dart';

import '../../constants.dart';
import '../../sizes_helpers.dart';

class CompleteRegistrationScreen extends StatefulWidget{
  static const String idScreen = 'completeRegister';

  @override
  _CompleteRegistrationState createState() => _CompleteRegistrationState();
}

class _CompleteRegistrationState extends State<CompleteRegistrationScreen>{
 // final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName;
  String lastName;
  String userName;
  String dateOfBirth;
  String location;
  //DateTime _dateTime;
  DateTime currentDate = DateTime.now();

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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1970),
        lastDate: currentDate);
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }
  //
  // void _onCountryChange(CountryCode countryCode) {
  //   //manipulate the selected country code here
  //   print("New Country selected: " + countryCode.toString());
  // }



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
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: displayWidth(context)*0.1),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: displayHeight(context) * 0.08), // 4%
                        Text("Complete Profile", style: TextStyle(
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
                                buildFirstNameFormField(),
                                SizedBox(height: displayHeight(context)*0.020),
                                buildLastNameFormField(),
                                SizedBox(height: displayHeight(context)*0.020),
                                buildUserNameFormField(),
                                SizedBox(height: displayHeight(context)*0.020),
                                buildDOBFormField(), // Date of birth field
                                SizedBox(height: displayHeight(context)*0.020),
                                Container(
                                  height: displayHeight(context)*0.070,
                                  decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: [
                                      buildLocationFormField(),
                                      Text('Enter your current location',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: displayWidth(context)/25,
                                        ),)
                                    ],
                                  ),
                                ),
                                SizedBox(height: displayHeight(context)*0.03),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(onPressed: (){ // Sign Up button
                                    Navigator.pushNamedAndRemoveUntil(context, SignInPage.idScreen, (route) => false);
                                  },
                                      style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                                          primary: kPrimaryColor
                                      ),child: Text('Sign Up',style: TextStyle(
                                        color: Colors.white,
                                        fontSize: displayWidth(context)/28,
                                      ),)),
                                ),
                                SizedBox(height: displayHeight(context)*0.040),
                              ],
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }


  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your first name",
        hintStyle: TextStyle(fontSize: displayWidth(context)/25, color: Colors.grey),
        fillColor: Colors.white,
        border: InputBorder.none,
        filled: true,
        contentPadding: new EdgeInsets.symmetric(vertical: 25.0, horizontal: displayWidth(context)*0.04),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      decoration: InputDecoration(
        hintText: "Enter your last name",
        hintStyle: TextStyle(fontSize: displayWidth(context)/25, color: Colors.grey),
        fillColor: Colors.white,
        border: InputBorder.none,
        filled: true,
        contentPadding: new EdgeInsets.symmetric(vertical: 25.0, horizontal: displayWidth(context)*0.04),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildUserNameFormField() {
    return TextFormField(
      onSaved: (newValue) => userName = newValue,
      decoration: InputDecoration(
        hintText: "Enter your username",
        hintStyle: TextStyle(fontSize: displayWidth(context)/25, color: Colors.grey),
        fillColor: Colors.white,
        border: InputBorder.none,
        filled: true,
        contentPadding: new EdgeInsets.symmetric(vertical: 25.0, horizontal: displayWidth(context)*0.04),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildDOBFormField() {
    return TextFormField(
      onSaved: (newValue) => dateOfBirth = newValue,
        showCursor: true,
      onTap: (){
        _selectDate(context);
      },
      decoration: InputDecoration(
        hintText: "Enter your age",
        hintStyle: TextStyle(fontSize: displayWidth(context)/25, color: Colors.grey),
        fillColor: Colors.white,
        border: InputBorder.none,
        filled: true,
        contentPadding: new EdgeInsets.symmetric(vertical: 25.0, horizontal: displayWidth(context)*0.04),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  CountryCodePicker buildLocationFormField(){
    return CountryCodePicker(
      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
      initialSelection: 'NG',
      favorite: ['+234','NG'],
      // optional. Shows only country name and flag
      showCountryOnly: false,
      // optional. Shows only country name and flag when popup is closed.
      showOnlyCountryWhenClosed: false,
      // optional. aligns the flag and the Text left
      alignLeft: true,
      hideMainText: true,
      padding: EdgeInsets.all(16)
    );
  }

}