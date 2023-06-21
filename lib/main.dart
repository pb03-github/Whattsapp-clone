import "package:flutter/material.dart";
import 'package:untitled3/widgets/ChatPage.dart';
import 'package:untitled3/widgets/SettingsPage.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(color: Color(0xff075e55)),
          bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.black.withOpacity(0))),
      routes: {
        "/": (context) => HomePage(),
        "SettingsPage": (context) => SettingsPage(),
        "ChatPage" : (context) => ChatPage()
      },
    );
  }
}
