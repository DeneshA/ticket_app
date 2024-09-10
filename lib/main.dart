import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/hotel_detail.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';
import 'package:get/get.dart';

void main() {
  // var myList = ["Flutter","Larvel","PHP"];
  runApp(const MyApp()); // This is a entry point for Flutter framework
  // print("${myList.toString()}");
  // var test = TestClass(x: 2, y: 3);
  // print(test.x);

 // var newTest = test.copyWith(30,40);
 //  var newTest = test.copyWith(x: 30); // Coz of Line No. 28 uses {} to pass the optional argument this has to assign with argument name
 //  print(newTest.x);
 //  print(newTest.y);
 //
 //  var newTest2 = newTest.copyWith(y:100);
 //  print(newTest2.x);
}
//Examples
class TestClass{

  int x;
  int y;
// Required used in the parameter coz it can be state while creating
// instance by the constructor Eg. var test = TestClass(x: 2, y: 3);
  TestClass({required this.x, required this.y}) ;

  //Method - copywith method - this method will return a Object type of 'TestClass"
  // int? mean you may pass variable may not

  //TestClass copyWith(int? x, int? y){
  TestClass copyWith({int? x, int? y}){ // this {} gives you the option to pass the argument of this parameter optional
    //return TestClass(x: 5, y: 10);

    // passing the parameter to the return object
    //return TestClass(x: x!, y: y!);   //due to Int x is not null x!


    // Due to the line no. 12 & 28 pass only one argument  and use {}
    // these parameters has to change in a way to define the default parameter of the previous/old values of the object
    return TestClass(x: x??this.x, y: y??this.y);

  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //when using Gex we cannot use MaterialApp directly therefor use GetMaterialApp
    // return MaterialApp(
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       // home: const BottomNavBar(),
      routes: {
        AppRoutes.homePage: (context) =>  BottomNavBar(),
        AppRoutes.allTickets:(context) => const AllTickets(),
        AppRoutes.ticketScreen:(context) => const TicketScreen(),
        AppRoutes.allHotels:(context) => const AllHotels(),
        AppRoutes.hotelDetail:(context) => const HotelDetail()

      },
    );
  }
}
