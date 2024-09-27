import 'package:flutter/material.dart';
import 'package:skl_pertama/pages/HomePage.dart';
import 'package:skl_pertama/pages/ItemPage.dart';
import 'package:skl_pertama/pages/ProfilScreen.dart';
import 'package:skl_pertama/pages/cartPage.dart';
import 'package:skl_pertama/pages/chatPage.dart';
import 'package:skl_pertama/pages/loginPage.dart';
import 'package:skl_pertama/pages/messageListPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),

      routes: {
        "/": (context) => Homepage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "loginPage": (context) => LoginPage(),
        "profilScreen": (context) => ProfileScreen(),
        "messageListPage": (context) => MessageListPage(),
        "chatPage": (context) => ChatPage(),
      },
    );
  }
}