import "package:flutter/material.dart";

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "dog1.jpeg",
                        width: 65,
                        height: 65,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cool dog",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Yo Yo Kutta Singh!")
                            ]))
                  ],
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.key),
                ),
                title: Text("Acount",style: TextStyle(fontSize: 17),),
                subtitle: Text("Privacy, security, change number",style: TextStyle(fontSize: 15),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.chat_sharp),
                ),
                title: Text("Chats",style: TextStyle(fontSize: 17),),
                subtitle: Text("Themes ,wallappers,chat history",style: TextStyle(fontSize: 15),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.notifications),
                ),
                title: Text("Notifications",style: TextStyle(fontSize: 17),),
                subtitle: Text("Mesaage,group and call tones",style: TextStyle(fontSize: 15),),
              ),ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.sd_storage_sharp),
                ),
                title: Text("Storage and data",style: TextStyle(fontSize: 17),),
                subtitle: Text("Network usage ,auto download",style: TextStyle(fontSize: 15),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.help_outline_outlined),
                ),
                title: Text("Help",style: TextStyle(fontSize: 17),),
                subtitle: Text("Help centre,contact us",style: TextStyle(fontSize: 15),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.people_alt_outlined),
                ),
                title: Text("Invite a Friend",style: TextStyle(fontSize: 17),),
                
              ),



            ],
          ),
        ),
      ),
    );
  }
}
