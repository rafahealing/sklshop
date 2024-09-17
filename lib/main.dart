import 'package:flutter/material.dart';
import 'package:skl_pertama/pages/HomePage.dart';
import 'package:skl_pertama/pages/ItemPage.dart';
import 'package:skl_pertama/pages/cartPage.dart';

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
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}