import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/constants.dart';
import 'package:mindscape_app/screens/user_sign_up_screen.dart';

import '../sizes_helpers.dart';

class UserConsultantOptScreen extends StatefulWidget{
  @override
  _UserConsultantOptState createState() => _UserConsultantOptState();
}

class _UserConsultantOptState extends State<UserConsultantOptScreen>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: new Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/i_am_a_img.png'),
                    colorFilter: ColorFilter.mode(Color(0xff777474), BlendMode.multiply),
                    fit: BoxFit.cover
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                      flex:3,
                      child: Align(
                        child: Image.asset("assets/images/thesel_logo.png",
                            width: displayWidth(context)*0.5,
                            height: displayHeight(context)*0.5),
                      )
                  ),
                  Expanded(
                      flex:2,
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: displayWidth(context)*0.16),
                          child: Column(
                            children: [
                              Spacer(),
                              SizedBox(
                                width: displayWidth(context)/1.5,
                                child: ElevatedButton(onPressed: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => ClientRegScreen())
                                  );},
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                                        primary: kPrimaryColor
                                    ),child: Text('I am a user',style: TextStyle(
                                        color: Colors.white,
                                        fontSize: displayWidth(context)*0.04
                                    ),)),
                                ),
                              SizedBox(height: 16),
                              SizedBox(
                                width: displayWidth(context)/1.5,
                                child: ElevatedButton(onPressed: (){

                                },
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                                      primary: Colors.white
                                    ),child: Text('I am a consultant',style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: displayWidth(context)*0.04
                                    ),)),
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Already have an account?', textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: displayWidth(context)*0.035
                                    ),),
                                  SizedBox(width: 4),
                                  Text('Login', textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: kSecondaryColor,
                                        fontSize: displayWidth(context)*0.035
                                    ),)
                                ],
                              ),

                              Spacer(),
                            ],
                          )
                      )
                  )
                ],
              )
          ),
        )
    );
  }
}

