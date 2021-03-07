import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ChatRoomPage extends StatefulWidget{
  @override
  _ChatRoomState createState()=> _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoomPage>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Text('Chatroom'),
        ),
      ),
    );
  }
}