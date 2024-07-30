import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';


void main() {
  // var myList = ["Flutter","Larvel","PHP"];
  runApp(const MyApp()); // This is a entry point for Flutter framework
  // print("${myList.toString()}");
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
    );
  }
}
