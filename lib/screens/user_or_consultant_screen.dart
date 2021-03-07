import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/constants.dart';
import 'package:mindscape_app/screens/user_sign_up_page.dart';

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
                              horizontal: displayWidth(context)*0.12),
                          child: Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(onPressed: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => ClientRegPage())
                                  );},
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                                        primary: kPrimaryColor
                                    ),child: Text('I am a user',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: displayWidth(context)*0.045
                                      )
                                    )
                                )
                              ),
                              SizedBox(height: 16),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(onPressed: (){
                                  //..
                                },
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                                      primary: Colors.white
                                    ),
                                    child: Text('I am a consultant',style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: displayWidth(context)*0.045
                                    ),)),
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Text('Already have an account? ', textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: displayWidth(context)/26
                                          ),),
                                        Text('Login', textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: kSecondaryColor,
                                              fontSize: displayWidth(context)/26
                                          ),),
                                      ],
                                    ),
                                  )
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

