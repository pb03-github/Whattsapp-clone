import 'package:flutter/material.dart';
import "package:custom_clippers/custom_clippers.dart";
class ChatSample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80.0),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 25),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text("Hey bro ,how are you?",style: TextStyle(fontSize: 17),),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20,left: 80,bottom: 50),
          alignment: Alignment.centerRight,
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),

            child: Container(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 20),
              decoration: BoxDecoration(
                color: Color(0xffe4fdca),
              ),
              child: Text("I'm cool dood",style: TextStyle(fontSize: 17),),
            ),
          ),
        ),
      ],
    );
  }
}
