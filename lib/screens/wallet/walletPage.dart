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

  double newFontSize = 0.06;

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
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: displayHeight(context)*0.06, left: displayWidth(context)* .09, right: displayWidth(context)* .09),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('32,000.00',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: displayWidth(context)/14,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text('Available Balance:',
                                        style:
                                        TextStyle(
                                            color: Colors.white70,
                                            fontSize: displayWidth(context)/28
                                        )
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Container(
                                          //margin: EdgeInsets.only(left: displayWidth(context) * 0.04),
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
                                    SizedBox(height: 8),
                                    Container(
                                      //margin: EdgeInsets.only(left: displayWidth(context)*0.04, top: displayHeight(context) * 0.01),
                                      decoration: BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      child: SizedBox(
                                        width: displayWidth(context)*0.4,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
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
                                            Row(
                                              children: [
                                                Text('Pay', style: TextStyle(fontSize: displayWidth(context) * 0.06, color: Color(0xff00435c), fontWeight: FontWeight.bold),),
                                                Padding(
                                                    padding: EdgeInsets.only(right: displayWidth(context) * 0.02),
                                                    child: Text('Pal',
                                                      style: TextStyle(fontSize: displayWidth(context) * 0.06, color: Color(0xff0089bc), fontWeight: FontWeight.bold),)
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: displayHeight(context)*0.04),
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
                            SizedBox(height: displayHeight(context)*0.02),
                            SizedBox(
                              height: 60,
                              width: double.infinity,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xfff7f7f7),
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  )
                ],
              )
            )
        )
      ],
    );
  }
}