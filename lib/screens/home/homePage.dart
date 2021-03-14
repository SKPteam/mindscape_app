import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/screens/home/components/notificationBadge.dart';
import 'package:mindscape_app/screens/home/components/selectCategoryTab.dart';
import 'package:mindscape_app/sizes_helpers.dart';

import 'components/myScheduledMeetingsTab.dart';
import 'components/selectMoodTab.dart';

class HomePage extends StatefulWidget{
  @override
  _HomeState createState()=> _HomeState();
}

class _HomeState extends State<HomePage>{

  static const String blog = 'Blog';
  static const String signOut = 'Sign out';

  List<String> menuOptions = <String>[
    blog,
    signOut
  ];

  optionAction(String option){
    if(option == blog){
      print('$blog');
    } else {
      print('$signOut');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // Here the height of the container is 40% of our total height
          height: displayHeight(context) * .35,
          decoration: BoxDecoration(
              color: Colors.green
          ),
        ),
        SafeArea(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
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
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: displayWidth(context)* .056, right: displayWidth(context)* .056),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            SizedBox(height: displayHeight(context)*0.08),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: displayWidth(context)*0.03),
                                    Text(
                                      "Hi, username",
                                      style: TextStyle(
                                          fontSize: displayWidth(context)*0.060,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: displayWidth(context)*0.03),
                                    Text(
                                      "Jan 27, 2021 - 3:45PM",
                                      style: TextStyle(
                                        fontSize: displayWidth(context)*0.035,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: displayWidth(context) * 0.2),
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(0),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.calendar_today_rounded,
                                    size: displayWidth(context) * 0.07,
                                    color: Color(0xff266C29),
                                  ),
                                  onPressed: () {
                                    //..
                                  },
                                  splashColor: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: displayWidth(context) * 0.02),
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(0),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.notifications,
                                    size: displayWidth(context) * 0.07,
                                    color: Color(0xff266C29),
                                  ),
                                  onPressed: () {
                                    //..
                                  },
                                  splashColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        NotificationBadge()
                      ],
                    ),
                  ),

                  Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 26),
                            child: MyScheduledMeetings(),
                          ),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 26),
                            child: SelectCategory(),
                          ),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 26),
                            child: SelectMood(),
                          ),
                        ],
                      )
                  )
                ],
              ),
            )
        )
      ],
    );
  }



}



