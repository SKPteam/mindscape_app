import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../sizes_helpers.dart';


class WalletPage extends StatefulWidget{
  @override
  _WalletState createState()=> _WalletState();
}

class _WalletState extends State<WalletPage>{
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
                children: [
                  AppBar(
                    title: Text('My Wallet'),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),

                  Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: displayHeight(context)/25),
                          Text('Available:', style: TextStyle(color: Color(0xffe6e6e6), fontSize: displayWidth(context)/22),),
                          SizedBox(height: displayHeight(context)/40),
                          Text('32,000.00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: displayWidth(context)/8,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      )
                  )
                ],
              )
            )
        )
      ],
    );
  }
}