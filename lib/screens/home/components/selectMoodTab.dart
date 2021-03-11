import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/models/mood.dart';
import 'package:mindscape_app/sizes_helpers.dart';

class SelectMood extends StatelessWidget{

  final List<Mood> moodsList = [
    Mood('Happy','assets/emojis/happy.png'),
    Mood('Sad','assets/emojis/sad.png'),
    Mood('Angry','assets/emojis/angry.png'),
    Mood('Frustrated','assets/emojis/frustrated.png'),
    Mood('Proud','assets/emojis/proud.png'),
    Mood('Fear','assets/emojis/fear.png'),
    Mood('Embarrassed','assets/emojis/embarrassed.png'),
    Mood('shock','assets/emojis/shock.png')

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:displayHeight(context)*0.02),
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
                          fontSize: displayWidth(context)*0.042,
                          color: Color(0xff575757)
                      )
                  ),
                ],
              ),
            ),
            SizedBox(
              height: displayHeight(context)*0.08,
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
                child: Column(
                  children: [
                    Expanded(
                      child: new ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: moodsList.length,
                          itemBuilder: (BuildContext context, int index)=>buildMoodCard(context, index)
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildMoodCard(BuildContext context, int index){
    final mood = moodsList[index];
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.only(left: 8, top: 8, right: 8),
      child: Column(
        children: [
          Image.asset(
            mood.image,
            height: 30,
            width: 30,),
          Text(mood.name, style: TextStyle(color: Colors.white),)
        ],
      )
    );
  }
}