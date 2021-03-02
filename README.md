# mindscape_app

A mental health platform

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

#home

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Bar V2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNavBarV2(),
    );
  }
}

class BottomNavBarV2 extends StatefulWidget {
  @override
  _BottomNavBarV2State createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {

  static const String blog = 'Blog';
  static const String signOut = 'Sign out';

  List<String> menuOptions = <String>[
    blog,
    signOut
  ];

  int currentIndex = 1;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.white.withAlpha(230),
      backgroundColor: Color(0xffF8F8F8),
      body: Container(
        child: Stack(
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
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
                                )
                              ],
                            ),
                            SizedBox(
                              height: size.height*0.05,
                              child: Container(
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
                              ),
                            SizedBox(
                              height: size.height*0.05,
                              child: Container(
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
                        ),
                      )
                    ],
                  ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    width: size.width,
                    height: 80,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        CustomPaint(
                          size: Size(size.width, 80),
                          painter: BNBCustomPainter(),
                        ),
                        Center(
                          heightFactor: 0.6,
                          child: FloatingActionButton(backgroundColor: Color(0xff266C29), child: Icon(Icons.chat_bubble), elevation: 0.1, onPressed: () {}),
                        ),
                        Container(
                          width: size.width,
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //home
                              IconButton(
                                icon: Icon(
                                  Icons.home,
                                  color: currentIndex == 0 ? Colors.green : Colors.grey.shade400,
                                ),
                                onPressed: () {
                                  setBottomBarIndex(0);
                                },
                                splashColor: Colors.white,
                              ),

                              //wallet
                              IconButton(
                                  icon: Icon(
                                    Icons.account_balance_wallet,
                                    color: currentIndex == 1 ? Colors.green : Colors.grey.shade400,
                                  ),
                                  onPressed: () {
                                    setBottomBarIndex(1);
                                  }),
                              Container(
                                width: size.width * 0.20,
                              ),

                              //journal
                              IconButton(
                                  icon: Icon(
                                    Icons.note_add_sharp,
                                    color: currentIndex == 2 ? Colors.green : Colors.grey.shade400,
                                  ),
                                  onPressed: () {
                                    setBottomBarIndex(2);
                                  }),
                              //Profile
                              IconButton(
                                  icon: Icon(
                                    Icons.person,
                                    color: currentIndex == 3 ? Colors.green : Colors.grey.shade400,
                                  ),
                                  onPressed: () {
                                    setBottomBarIndex(3);
                                  }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),

          ],
        ),

      ),
    );
  }



  optionAction(String option){
    if(option == blog){
      print('$blog');
    } else {
      print('$signOut');
    }
  }

  Container myScheduledMeetings(){
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top:size.height*0.075),
      child: SizedBox(
        height: size.height*0.16,
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
                              '0',style: TextStyle(fontSize: size.width*0.042, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container selectCategory(){
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

  Container currentMood(){
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

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
