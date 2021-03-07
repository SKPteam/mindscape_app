import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class WalletPage extends StatefulWidget{
  @override
  _WalletState createState()=> _WalletState();
}

class _WalletState extends State<WalletPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('My Wallet'),
      ),
    );
  }
}