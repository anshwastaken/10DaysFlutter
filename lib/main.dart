import 'package:flutter/material.dart';
import 'package:flutter_learning/Cart_page.dart';
import 'package:flutter_learning/Store.dart';
import 'package:flutter_learning/home_page.dart';
import 'package:flutter_learning/login_page.dart';
import 'package:flutter_learning/utils/routes.dart';
import 'package:flutter_learning/widgets/themes.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp( VxState
  (store: MyStore(),child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyThemes.lightheme(context),
      darkTheme: MyThemes.darktheme(context),
      initialRoute: "/",
      routes:{
        "/" : (context) => HomePage(),
        Myroutes.loginRoute :(context) => LoginPage(),
        Myroutes.homeRoute:(context) => HomePage(),
        Myroutes.cartroute:(context)=> CartPage()
      },
    );
  }
}
