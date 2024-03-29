import 'package:flutter/material.dart';
import 'package:flutter_learning/home_page.dart';
import 'package:flutter_learning/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes:{
        "/" :(context) => LoginPage(),
        "/login":(context) => HomePage()
      },
    );
  }
}
