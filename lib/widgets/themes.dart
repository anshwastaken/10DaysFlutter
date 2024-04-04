import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyThemes {
  static ThemeData lightheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      canvasColor: Colors.white,
      cardColor: Colors.lightBlue,
      buttonTheme: ButtonThemeData(buttonColor: Colors.blueGrey),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0.0,
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
          )));

  static ThemeData darktheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      canvasColor: Colors.black,
      cardColor: Colors.black54,
      buttonTheme: ButtonThemeData(buttonColor: Colors.cyan),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0.0,
          color: Colors.black,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color :context.canvasColor)
          )
          );

  static Color creamcolor = Color(0xfff5f5f5);
}
