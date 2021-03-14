import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

  bool cbValueFirst = false;
  bool cbValueSecond = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: displayHeight(context) * .35,
                  child: Container(
                      padding: EdgeInsets.only(top: displayHeight(context)*0.06, left: displayWidth(context)* .09, right: displayWidth(context)* .09),
                    color: kPrimaryColor,
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
                                    /**
                                     * bank icon container
                                     */
                                    Container(
                                      //margin: EdgeInsets.only(left: displayWidth(context) * 0.04),
                                      decoration: BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: IconButton(
                                          icon: SvgPicture.asset("assets/icons/bank.svg"),
                                          onPressed: () {
                                            //..
                                          },
                                          splashColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                    /**
                                     * card/transactions icon container
                                     */
                                    Container(
                                      margin: EdgeInsets.only(left: displayWidth(context) * 0.02),
                                      decoration: BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      child: IconButton(
                                        icon: SvgPicture.asset("assets/icons/credit-card.svg"),
                                        onPressed: () {
                                          //..
                                        },
                                        splashColor: Colors.white,
                                      ),
                                    ),
                                    /**
                                     * top-up icon container
                                     */
                                    Container(
                                      margin: EdgeInsets.only(left: displayWidth(context) * 0.02),
                                      decoration: BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: IconButton(
                                          icon: SvgPicture.asset("assets/icons/top-up.svg"),
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
                            )
                          ],
                        )
                      ],
                    )
                  ),
                  // Trick to add the shadow for the submit button
                ),
              ),
              Positioned(
                top: 180,
                right: displayWidth(context)* .08,
                left: displayWidth(context)* .08,
                child: Container(
                  padding: EdgeInsets.only(left: displayWidth(context) * .05),
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
                    items: listItems.map((valueItem) => DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    )).toList(),
                  ),
                ),
              ),
              buildBottomHalfContainer(),
              Positioned(
                top: 580,
                left: displayWidth(context)* .04,
                child: Container(
                    child: Row(
                      children: [
                        Checkbox(
                            value: this.cbValueFirst,
                            onChanged: (bool value){
                              setState(() {
                                this.cbValueSecond = value;
                              });
                            }
                        ),
                        Text('Save Card (optional)', style: TextStyle(color: Color(0xff656565)),)
                      ],
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomHalfContainer() {
    return Positioned(
        top: 250,
        left: displayWidth(context)*0.03,
        right: displayWidth(context)*0.03,
        child: Container(
          height: 350,
          padding: EdgeInsets.only(left: displayWidth(context)*0.02, right: displayWidth(context)*0.02, top: displayHeight(context)*0.01),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Color(0xfff7f7f7),
            borderRadius: BorderRadius.circular(4.0)
          ),
          child: Form(
            child: Column(
              children: [
                cardNumberFormField(),
                cardHolderNameFormField(),
                cardExpiryDateFormField(),
                cardCVVFormField(),
              ],
            ),
          ),
        )
    );
  }

  //user's card number
  Container cardNumberFormField() {
    return Container(
      margin: EdgeInsets.only(top: 16, left: 16, right: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: kPrimaryAccentColor, width: 3),
          borderRadius: BorderRadius.circular(4.0)
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: InputBorder.none,
          filled: true,
          hintText: "Card number",
          hintStyle: TextStyle(fontSize: displayWidth(context)/25, color: Color(0xffA3A3A3)),
          contentPadding: new EdgeInsets.symmetric(vertical: displayHeight(context)*0.025, horizontal: displayWidth(context)*0.04),
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          //prefixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
        ),
      ),
    );
  }
  //user's card name
  Container cardHolderNameFormField() {
    return Container(
      margin: EdgeInsets.only(top: 8, left: 16, right: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: kPrimaryAccentColor, width: 3),
          borderRadius: BorderRadius.circular(4.0)
      ),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: InputBorder.none,
          filled: true,
          hintText: "Cardholder name",
          hintStyle: TextStyle(fontSize: displayWidth(context)/25, color: Color(0xffA3A3A3)),
          contentPadding: new EdgeInsets.symmetric(vertical: displayHeight(context)*0.025, horizontal: displayWidth(context)*0.04),
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          //prefixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
        ),
      ),
    );
  }
  //user's card expiry date
  Container cardExpiryDateFormField() {
    return Container(
      margin: EdgeInsets.only(top: 8, left: 16, right: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: kPrimaryAccentColor, width: 3),
          borderRadius: BorderRadius.circular(4.0)
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: InputBorder.none,
          filled: true,
          hintText: "Expire date",
          hintStyle: TextStyle(fontSize: displayWidth(context)/25, color: Color(0xffA3A3A3)),
          contentPadding: new EdgeInsets.symmetric(vertical: displayHeight(context)*0.025, horizontal: displayWidth(context)*0.04),
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          //prefixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
        ),
      ),
    );
  }
  //user's card cvv
  Container cardCVVFormField() {
    return Container(
      margin: EdgeInsets.only(top: 8, left: 16, right: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: kPrimaryAccentColor, width: 3),
          borderRadius: BorderRadius.circular(4.0)
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: InputBorder.none,
          filled: true,
          hintText: "CVV",
          hintStyle: TextStyle(fontSize: displayWidth(context)/25, color: Color(0xffA3A3A3)),
          contentPadding: new EdgeInsets.symmetric(vertical: displayHeight(context)*0.025, horizontal: displayWidth(context)*0.04),
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          //prefixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
        ),
      ),
    );
  }

}