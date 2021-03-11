import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindscape_app/screens/home/components/selectCategoryButton.dart';
import 'package:mindscape_app/sizes_helpers.dart';

class SelectCategory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:displayHeight(context)*0.02),
      child: SizedBox(
        height: displayHeight(context)*0.23,
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
                                      fontSize: displayWidth(context)*0.042,
                                      color: Color(0xff575757)
                                  )
                              )
                            ]
                        )
                    )
                  ]
              ),
              Scrollbar(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: displayWidth(context)*(0.02)),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SelectCategoryButton(
                                      title: 'Relationship',
                                      color: Color(0xff39a2c9),
                                    ),
                                    SelectCategoryButton(
                                      title: 'Addiction',
                                      color: Color(0xffe27f2a),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SelectCategoryButton(
                                      title: 'Depression',
                                      color: Color(0xff396bc9)
                                    ),
                                    SelectCategoryButton(
                                      title: 'Anxiety',
                                      color: Color(0xff39c9c3),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: displayWidth(context)*(0.02)),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SelectCategoryButton(
                                      title: 'Career',
                                      color: Colors.pink,
                                    ),
                                    SelectCategoryButton(
                                        title: 'Fitness',
                                      color: Colors.brown,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SelectCategoryButton(
                                        title: 'Anger',
                                        color: Colors.red
                                    ),
                                    SelectCategoryButton(
                                      title: 'Parenting',
                                      color: Colors.grey,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }

}