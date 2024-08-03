import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';

void main() {
  // var myList = ["Flutter","Larvel","PHP"];
  runApp(const MyApp()); // This is a entry point for Flutter framework
  // print("${myList.toString()}");
  var test = TestClass(x: 2, y: 3);
  print(test.x);

  var newTest = test.copyWith(30,40);
  print(newTest.x);
}
//Examples
class TestClass{

  int x;
  int y;
// Required used in the argument coz it can be state while creating
// instance by the constructor Eg. var test = TestClass(x: 2, y: 3);
  TestClass({required this.x, required this.y}) ;

  //Method - copywith method - this method will return a Object type of 'TestClass"
  // int? mean you may pass variable may not

  TestClass copyWith(int? x, int? y){
    return TestClass(x: 5, y: 10);
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
