import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/screens/dashboard/dashboard.dart';
import 'package:mindscape_app/screens/onboarding/onBoardingPage.dart';
import 'package:mindscape_app/screens/securityPin/securityPinPage.dart';
import 'package:mindscape_app/screens/signInPage.dart';
import 'package:mindscape_app/screens/splashScreen.dart';
import 'package:mindscape_app/screens/userRegistration/completeRegistrationPage.dart';
import 'package:mindscape_app/screens/userRegistration/userRegisterationPage.dart';
import 'package:mindscape_app/screens/user_or_consultant_screen.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen.idScreen,
      routes: {
        SplashScreen.idScreen: (context) => SplashScreen(),
        OnBoardingPage.idScreen: (context) => OnBoardingPage(),
        UserConsultantOptScreen.idScreen: (context) => UserConsultantOptScreen(),
        UserRegistrationPage.idScreen: (context) => UserRegistrationPage(),
        CompleteRegistrationScreen.idScreen: (context) => CompleteRegistrationScreen(),
        SignInPage.idScreen: (context) => SignInPage(),
        SecurityPinPage.idScreen: (context) => SecurityPinPage(),
        Dashboard.idScreen: (context) => Dashboard(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

