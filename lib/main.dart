import 'package:flutter/material.dart';
import 'package:flutter_learning/home_page.dart';
import 'package:flutter_learning/homedetails.dart';
import 'package:flutter_learning/login_page.dart';
import 'package:flutter_learning/utils/routes.dart';
import 'package:flutter_learning/widgets/themes.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: MyThemes.lightheme(context),
      darkTheme: MyThemes.darktheme(context),
      initialRoute: "/",
      routes:{
        "/" : (context) => HomePage(),
        Myroutes.loginRoute :(context) => LoginPage(),
        Myroutes.homeRoute:(context) => HomePage(),
      },
    );
  }
}
