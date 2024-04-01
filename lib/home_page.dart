import 'package:flutter/material.dart';
import 'package:flutter_learning/models/catalo.dart';
import 'package:flutter_learning/widgets/Item_widget.dart';
import 'package:flutter_learning/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: Catalog.products.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: Catalog.products[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
