import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/widgets/ChatBottombar.dart';
import 'package:untitled3/widgets/ChatSample.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            elevation: 0,
            leading: Padding(
              padding: EdgeInsets.only(top: 10, left: 5),
              child: Icon(
                Icons.arrow_back,
                size: 25,
              ),
            ),
            leadingWidth: 20,
            title: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "dog1.jpeg",
                      height: 45,
                      width: 55,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter coder",
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            "online",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white.withOpacity((0.8))),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0,right: 25),
                child: Icon(
                  CupertinoIcons.video_camera_solid,
                  size: 33,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0,right: 20),
                child: Icon(
                  Icons.call,
                  size: 25,
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0,right: 10),
                child: Icon(
                  Icons.more_vert,
                  size: 28,
                ),

              )
            ],
          ),
          preferredSize: Size.fromHeight(65)),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("dog1.jpeg"),fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(


                width: 300,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xfffff3c2),
                  borderRadius: BorderRadius.circular(5),boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),blurRadius: 8)]
                ),
                child: Text("Messages and call are end to end encrypted ,No one outside this chat can read or listen. tap to learn more",textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
              ),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample()
            ],
          ),
        ),
      ),
      bottomSheet: ChatBottombar(),
    );
  }
}
