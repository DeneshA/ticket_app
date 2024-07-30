import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tickets"),
      ),
      body: const Center(child: Text("Ticket Information")),
    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.blueGrey,
      unselectedItemColor: const Color(0xFF526400),
      showSelectedLabels: false,
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
      BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),label: "Tickets"),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
    ],),
    );
  }
}
