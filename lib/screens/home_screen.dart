import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        //Section 1 - Top
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text("Good Morning"),
                      Text("Book Tickets")
                    ],
                  ),
                  Container(
                        color: Colors.red,
                        width: 100,
                        height: 70,
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search icon"),
                  Text("Empty Space")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
