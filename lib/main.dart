import "package:flutter/material.dart";
import './screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DeliveryApp",
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: Color(0xffFF8D5F),
        accentColor: Color(0xffFFC9B3),
        highlightColor: Color(0xffFFC9B3),
        textTheme: TextTheme(
            bodyText1: TextStyle(color: Color(0xff441818), fontSize: 20.0),
            headline1: TextStyle(
                fontSize: 26.0,
                color: Color(0xff441818),
                fontWeight: FontWeight.bold),
            headline2: TextStyle(
                fontSize: 30,
                color: Color(0xffFF8D5F),
                fontWeight: FontWeight.bold),
            headline3: TextStyle(fontSize: 20.0, color: Colors.grey[400])),
      ),
    );
  }
}
