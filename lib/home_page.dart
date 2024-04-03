// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_learning/models/catalo.dart';
import 'package:flutter_learning/widgets/Item_widget.dart';
import 'package:flutter_learning/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadata();
  }

  loadata() async {
    var json = await rootBundle.loadString("assets/files/Catalog.json");
    var decodedata = jsonDecode(json);
    var productdata = decodedata["products"];
    Catalog.products =
        List.from(productdata).
        map<Item>((item) => 
        Item.fromMap(item)).toList();

        setState(() {
          
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (Catalog.products!=null && Catalog.products.isNotEmpty)?
        ListView.builder(
          itemCount: Catalog.products.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: Catalog.products[index],
            );
          },
        ):
        Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
