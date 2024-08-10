import 'package:flutter/material.dart';

class SearchType extends StatelessWidget {

  const SearchType({super.key, required this.caption});
  final  String caption;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // caption == "Hotel" ? side = 'left': side='right';

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width*.44,
      decoration:  BoxDecoration(
          color:  caption == "Hotel" ? Colors.transparent :Colors.white,
        borderRadius: caption == "Hotel"
            ? const BorderRadius.horizontal(right: Radius.circular(50))
            : const BorderRadius.horizontal(left: Radius.circular(50)),
    ),
      child: Center(child: caption == "Hotel" ? const Text("Hotel"):const Text("Airline Tickets")),
    );
  }
}