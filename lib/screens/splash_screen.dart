import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/screens/onboarding/OnBoardingPage.dart';
import 'package:mindscape_app/sizes_helpers.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splash_screen.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: InkWell(
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
                      flex: 2,
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: displayWidth(context)*0.16),
                        child: Column(
                          children: [
                            Spacer(),
                            SizedBox(
                              height: displayHeight(context)*0.03,
                              child: new FittedBox(
                                child: new Text('Find Peace With Thesel',
                                  style: TextStyle(
                                      color: Color(0xFFC3C3C3),
                                  ),),
                              ),
                            ),
                            Spacer(flex:1),
                          ],
                        )
                      ))
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingPage())
                );
              },
            )
        ),
        //to make stack clickable
      )
    );
  }

}