import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appointment_card.dart';


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

  // List<Map<String, String>> appointmentCardContent = [
  //   {
  //     "name": "Dr. Charles Richard",
  //     "image": "assets/images/onboarding_img1.png",
  //     "category": "Depression",
  //     "type": "30mins",
  //     "time": "13:00",
  //     "date": "12/04/2021"
  //   },
  //   {
  //     "name": "Dr. Charles Richard",
  //     "image": "assets/images/onboarding_img1.png",
  //     "category": "Depression",
  //     "type": "30mins",
  //     "time": "13:00",
  //     "date": "12/04/2021"
  //   },
  //   {
  //     "name": "Dr. Charles Richard",
  //     "image": "assets/images/onboarding_img1.png",
  //     "category": "Depression",
  //     "type": "30mins",
  //     "time": "13:00",
  //     "date": "12/04/2021"
  //   },
  //   {
  //     "name": "Dr. Charles Richard",
  //     "image": "assets/images/onboarding_img1.png",
  //     "category": "Depression",
  //     "type": "30mins",
  //     "time": "13:00",
  //     "date": "12/04/2021"
  //   }
  // ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          // Here the height of the container is 40% of our total height
          height: size.height * .35,
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
                      ]
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            SizedBox(height: size.height*0.08),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: size.width*0.03),
                                    Text(
                                      "Hi, username",
                                      style: TextStyle(
                                          fontSize: size.width*0.060,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: size.width*0.03),
                                    Text(
                                      "Jan 27, 2021 - 3:45PM",
                                      style: TextStyle(
                                        fontSize: size.width*0.035,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left:size.width*0.2),
                              decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(0),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.calendar_today_rounded,
                                    size: size.width*0.07,
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
                              margin: EdgeInsets.only(left:size.width*0.02),
                              decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(0),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.notifications,
                                    size: size.width*0.07,
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
                        Positioned(
                          right: 0.8,
                          top: 0.8,
                          child: Container(
                            margin: EdgeInsets.only(top: 3, right: 6),
                            padding: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.red,
                            ),
                            constraints: BoxConstraints(
                              minWidth: 16,
                              minHeight: 16,
                            ),
                            child: Text(
                              '12',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 26),
                            child: myScheduledMeetings(),
                          ),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 26),
                            child: selectCategory(),
                          ),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 26),
                            child: currentMood(),
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

  optionAction(String option){
    if(option == blog){
      print('$blog');
    } else {
      print('$signOut');
    }
  }

  myScheduledMeetings() {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top:size.height*0.075),
      child: SizedBox(
        height: size.height*0.16,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  offset: Offset(12, 12),
                  blurRadius: 12,
                  color: Colors.black38,
                  spreadRadius: -4
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      children: [
                        Text(
                          'My scheduled meetings',
                          style: TextStyle(
                              fontSize: size.width*0.042,
                              color: Color(0xff575757)
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left:size.width*0.14),
                          decoration: BoxDecoration(
                              color: Color(0xff266C29),
                              borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            child: Text(
                              '0', style: TextStyle(
                                    fontSize: size.width*0.042,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                            ))
                          )
                        )
                      ]
                    )
                  )
                ]
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AppointmentCard(
                      image: "assets/images/thesel_logo.png",
                    ),
                    AppointmentCard(
                      image: "assets/images/thesel_logo.png",
                    ),
                    AppointmentCard(
                      image: "assets/images/thesel_logo.png",
                    ),
                    AppointmentCard(
                      image: "assets/images/thesel_logo.png",
                    ),
                  ],
                ),
              ),
            ]
          )
        )
      )
    );
  }

  selectCategory() {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top:size.height*0.02),
      child: SizedBox(
        height: size.height*0.26,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  offset: Offset(12, 12),
                  blurRadius: 12,
                  color: Colors.black38,
                  spreadRadius: -4
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Row(
                            children: [
                              Text(
                                  'What would you like to talk about?',
                                  style: TextStyle(
                                      fontSize: size.width*0.042,
                                      color: Color(0xff575757)
                                  )
                              )
                            ]
                        )
                    )
                  ]
              )
            ],
          ),
        ),
      ),
    );
  }

  currentMood(){
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top:size.height*0.02),
      child: SizedBox(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Text(
                      'How are you feeling today?',
                      style: TextStyle(
                          fontSize: size.width*0.042,
                          color: Color(0xff575757)
                      )
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height*0.08,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(12, 12),
                        blurRadius: 12,
                        color: Colors.black38,
                        spreadRadius: -4
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}



