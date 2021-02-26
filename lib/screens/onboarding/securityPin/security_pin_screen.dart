import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/constants.dart';
import 'package:mindscape_app/screens/onboarding/securityPin/pin_number.dart';

class PinEntryScreen extends StatefulWidget{
  @override
  _PinEntryState createState() => _PinEntryState();
}

class _PinEntryState extends State<PinEntryScreen>{

  static const String createNewPin = 'Create new pin';
  static const String signOut = 'Sign out';

  List<String> menuOptions = <String>[
    createNewPin,
    signOut
  ];

  List<String> currentPin = ["", "", "", ""];
  TextEditingController pinOneController = TextEditingController();
  TextEditingController pinTwoController = TextEditingController();
  TextEditingController pinThreeController = TextEditingController();
  TextEditingController pinFourController = TextEditingController();

  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(color: Colors.transparent)
  );

  int pinIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text("Enter Your Pin", style:
            TextStyle(
                color: Color(0xffffffff)
            ),),
            actions: [
              PopupMenuButton<String>(
                  onSelected: optionAction,
                  itemBuilder: (BuildContext context){
                    return menuOptions.map((String option){
                      return PopupMenuItem(
                          value: option,
                          child: Text(option)
                      );
                    }).toList();
                  }
              )
            ]
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  kPrimaryColor,
                  Color(0xff0C570F)
                ],
                begin: Alignment.topRight
              )
            ),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                      alignment: Alignment(0, 0.5),
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          buildPinRow()
                        ],
                      ),
                    )
                )
              ],
            ),
          ),
        )
    );
  }

  optionAction(String option){
    if(option == createNewPin){
      print('Create new pin');
    } else {
      print('Sign out');
    }
  }

  buildPinRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinOneController,
        ),
      ],
    );
  }
}