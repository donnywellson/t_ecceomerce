import 'package:flutter/material.dart';

class TColors{
  TColors._();

  //App Basic Colors
  static const Color primary = Color.fromARGB(255, 16, 92, 192);
  static const Color secondary = Color.fromARGB(248, 239, 241, 107);
  static const Color accent = Color.fromARGB(255, 163, 161, 161);

  //Gradient Colors
  static const Gradient primaryColor =  LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],);

  //Text Colors
  static const Color textPrimary = Color.fromARGB(255, 26, 23, 23);
  static const Color textSecondary = Color.fromARGB(255, 121, 122, 124);
  static const Color textWhite = Colors.white;

  //Background Colors
  static const Color light = Color.fromARGB(255, 241, 238, 238);
  static const Color dark = Color.fromARGB(255, 46, 41, 41);
  static const Color primaryBackground = Colors.white12;

  //background Container color
  static const Color lightContainer = Colors.white;
  static  Color darkContainer = TColors.white.withOpacity(0.1);

  //Button Colors
  static const Color buttonPrimary = Color.fromARGB(255, 64, 112, 202);
  static const Color buttonSecondary = Color.fromARGB(171, 87, 87, 87);
  static const Color buttonDisabled = Colors.grey;

  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  //Error and Validation Colors
  static const Color error = Color.fromARGB(255, 204, 25, 13);
  static const Color success = Color.fromARGB(255, 21, 175, 26);
  static const Color warning = Color.fromARGB(255, 245, 148, 2);
  static const Color info = Color.fromARGB(255, 7, 134, 238);

  //Neutral Shades
  static const Color black = Colors.black;
  static const Color darkerGrey = Color.fromARGB(255, 58, 57, 57);
  static const Color darkGrey = Color.fromARGB(255, 126, 126, 128);
  static const Color grey = Color.fromARGB(255, 201, 213, 238);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color.fromARGB(255, 214, 225, 247);
  static const Color white = Color(0xFFFFFFFF);
}