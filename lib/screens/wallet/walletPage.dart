import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/constants.dart';

import '../../sizes_helpers.dart';


class WalletPage extends StatefulWidget{
  @override
  _WalletState createState()=> _WalletState();
}

class _WalletState extends State<WalletPage>{

  String valueChoose;
  List listItems = [
    'item 1', 'item 2', 'item 3'
  ];

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
                          Padding(
                              padding: EdgeInsets.only(top:16),
                              child: Text('32,000.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: displayWidth(context)/8,
                                  fontWeight: FontWeight.bold
                              ),
                            ),),
                          SizedBox(height: displayHeight(context)/64),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 16, right: 16),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: kPrimaryAccentColor, width: 3),
                                      borderRadius: BorderRadius.circular(4.0)
                                  ),
                                  child: DropdownButton(
                                    hint: Text('Select card type'),
                                    isExpanded: true,
                                    underline: SizedBox(),
                                    icon: Icon(Icons.keyboard_arrow_down_rounded, color: kPrimaryDarkColor),
                                    value: valueChoose,
                                    onChanged: (newValue){
                                      setState(() {
                                        valueChoose = newValue;
                                      });
                                    },
                                    items: listItems.map((valueItem){
                                      return DropdownMenuItem(
                                        value: valueItem,
                                        child: Text(valueItem),
                                      );
                                    }).toList(),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        height: displayHeight(context)/16,
                                        width: displayWidth(context)/2.25,
                                        child: Container(
                                          padding: EdgeInsets.only(left: 8, right: 8),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(color: kPrimaryAccentColor, width: 3),
                                              borderRadius: BorderRadius.circular(4.0)
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height: displayHeight(context)/16,
                                        width: displayWidth(context)/2.25,
                                        child: Container(
                                          padding: EdgeInsets.only(left: 8, right: 8),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(color: kPrimaryAccentColor, width: 3),
                                              borderRadius: BorderRadius.circular(4.0)
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: SizedBox(
                                    height: displayHeight(context)/16,
                                    width: double.infinity,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 8, right: 8),
                                      decoration: BoxDecoration(
                                          color: Colors.blueAccent,
                                          border: Border.all(color: kPrimaryAccentColor, width: 3),
                                          borderRadius: BorderRadius.circular(4.0)
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )

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