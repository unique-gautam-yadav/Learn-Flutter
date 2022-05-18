// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: Colors.deepPurple,
      brightness: Brightness.light,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
          backgroundColor: MyThemes.creamColor,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          iconTheme: const IconThemeData(color: Colors.black)));
  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
  //Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkBlueishColor = const Color(0Xff403b58);
}
