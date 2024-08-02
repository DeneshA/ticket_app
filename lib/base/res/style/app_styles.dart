
import 'package:flutter/material.dart';

//Variable
Color primary = const Color(0xFF687daf);

class AppStyles{

  //Create Static variable
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);

  static TextStyle headLineStyle1 = TextStyle(
          fontSize: 26,fontWeight: FontWeight.bold, color:textColor);

  static TextStyle headLineStyle2 = const TextStyle(
          fontSize: 17, fontWeight: FontWeight.w500
  );
}