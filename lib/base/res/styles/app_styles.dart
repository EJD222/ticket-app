import 'package:flutter/material.dart';

Color primary = const Color(0xFF687DAF);
class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3B3B3B);
  static Color textColor2 = const Color(0xFFDB2BDB6);
  static Color backgroundColor = const Color(0xFFEEEDF2);
  static Color ticketColor1 = const Color(0xFF526799);
  static Color ticketColor2 = const Color(0xFFF37B67);
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor
  );
  static TextStyle headlineStyle1 = TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.bold,
      color: textColor
  );
  static TextStyle headlineStyle2 = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500
  );
  static TextStyle headlineStyle3 = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: textColor
  );
  static TextStyle headlineStyle4 = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: textColor
  );
}