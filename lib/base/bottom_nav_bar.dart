import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/controller/bottom_nav_controller.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/profile/profile_screen.dart';
import 'package:ticket_app/screens/search/search_screen.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

// class BottomNavBar extends StatefulWidget {
//because we use GetX we no more need statfull widget
//NOte : Staefull widget take more memory therefore we use GetX to use SharedMemory
  class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final BottomNavController controller= Get.put(BottomNavController());
// this code creating new object from here and this is called "Dependency Injection"

  //List is iterated using index
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  //Change our index for BottomNavBar
  // int _selectedIndex = 0; //private variable
  //
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  //
  //   //print("Taped index is $_selectedIndex");
  // }

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    print("my tab val ${controller.selectedIndex.value}");
    //inorder to rerender the update reflect on UI we have to use obs otherwise it would reflect on backend (dart) code not un UI (Frontend) code
    return Obx((){
      return Scaffold(
        // appBar: AppBar(
        //   title: const Text("My Tickets"),
        // ),
        body: appScreens[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.onItemTapped,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526400),
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Tickets"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "Profile"),
          ],
        ),
      );
    });
  }
}
