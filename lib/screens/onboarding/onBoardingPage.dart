import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/screens/onboarding/components/onBoardingContent.dart';
import 'package:mindscape_app/screens/user_or_consultant_screen.dart';
import 'package:mindscape_app/sizes_helpers.dart';
import 'package:mindscape_app/constants.dart';


class OnBoardingPage extends StatefulWidget{
  static const String idScreen = 'onBoarding';

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoardingPage> {
  int currentPage = 0;
  List<Map<String, String>> onBoardingData = [
    {
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, \nsed do eiusmod tempor.",
      "image": "assets/images/onboarding_img1.png"
    },
    {
      "text":
      "We help people conect with store \naround United State of America",
      "image": "assets/images/onboarding_img2.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: new Container(
            child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: PageView.builder(
                        onPageChanged: (value) {
                          setState(() {
                            currentPage = value;
                          });
                        },
                        itemCount: onBoardingData.length,
                        itemBuilder: (context, index) => OnBoardingContent(
                          image: onBoardingData[index]["image"],
                          text: onBoardingData[index]['text'],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: displayWidth(context)*0.16),
                        child: Column(
                          children: <Widget>[
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                onBoardingData.length,
                                    (index) => buildDot(index: index),
                              ),
                            ),
                            Spacer(flex: 2),
                            ElevatedButton(onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(context, UserConsultantOptScreen.idScreen, (route) => false);
                            },
                              child: Text('Next')
                            ),
                            Spacer(),
                          ],
                        ),
                      )
                    )

                  ],
                )
            )
        ),
      )
    );
  }


  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}