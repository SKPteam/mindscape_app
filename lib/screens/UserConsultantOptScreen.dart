import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  colorFilter: ColorFilter.mode(Colors.black45, BlendMode.multiply),
                  fit: BoxFit.cover
              ),
            ),
              child: Stack(
                  children: <Widget>[
                    new Container(
                        margin: EdgeInsets. only(top:displayWidth(context)*0.15),
                        child: Align(
                            child: Column(
                              children: [
                                Image.asset("assets/images/thesel_logo.png",
                                    width: displayWidth(context)*0.5,
                                    height: displayHeight(context)*0.5),
                              ],
                            )
                        )
                    ),
                    new Container(
                        margin: EdgeInsets.only(bottom:displayWidth(context)*0.3),
                        child: Align(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[

                                new Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                                  child: ElevatedButton(onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => UserConsultantOptScreen())
                                    );
                                  },
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(horizontal: displayWidth(context)*0.2, vertical: 20),
                                      ),child: Text('I am a user',style: TextStyle(
                                          color: Colors.white
                                      ),)),
                                ),

                                new Container(
                                  padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
                                  child: ElevatedButton(onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => UserConsultantOptScreen())
                                    );
                                  },
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(horizontal: displayWidth(context)*0.15, vertical: 20),
                                        primary: Colors.white,
                                      ),child: Text('I am a consultant', style: TextStyle(
                                          color: Colors.green
                                      ),)),
                                )
                              ],
                            )
                      ),
                    )
                  ]
              )
          ),
        )
    );
  }
}

