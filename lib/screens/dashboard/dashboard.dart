import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/screens/dashboard/components/bottomNavBar.dart';
import 'package:mindscape_app/screens/home/homePage.dart';
import 'package:mindscape_app/screens/journal/journalPage.dart';
import 'package:mindscape_app/screens/myProfile/myProfilePage.dart';
import 'package:mindscape_app/screens/wallet/walletPage.dart';

class Dashboard extends StatefulWidget{
  static const String idScreen = 'dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>{
  static const String blog = 'Blog';
  static const String signOut = 'Sign out';

  List<String> menuOptions = <String>[
    blog,
    signOut
  ];

  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  final tabs = [
    Center(child: HomePage()),
    Center(child: WalletPage()),
    Center(child: JournalPage()),
    Center(child: MyProfilePage())
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: Container(
        child: Stack(
            children: [
              Container(
                child: tabs[currentIndex],
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
                            child: FloatingActionButton(
                                backgroundColor: Color(0xff266C29), child: Icon(Icons.chat_bubble), elevation: 0.1, onPressed: () {}
                            ),
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
              )
            ]
        ),
      ),

    );
  }
}

