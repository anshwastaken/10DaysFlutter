import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Catalog App"),backgroundColor: Colors.deepPurple,),
        body: Center(
          child: Container(
            child: const Text("Welcome to Ansh Learning Flutter"),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}