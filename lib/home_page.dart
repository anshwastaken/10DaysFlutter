// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learning/homedetails.dart';

import 'package:flutter_learning/models/catalo.dart';
import 'package:flutter_learning/utils/routes.dart';
import 'package:flutter_learning/widgets/Item_widget.dart';
import 'package:flutter_learning/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

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
    await Future.delayed(Duration(seconds: 2));
    final json = await rootBundle.loadString("assets/files/Catalog.json");
    final decodedata = jsonDecode(json);
    final productdata = decodedata["products"];
    Catalog.products =
        List.from(productdata).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Myroutes.cartroute);
        },
        child: Icon(CupertinoIcons.cart),
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogTop(),
              if (Catalog.products != null && Catalog.products.isNotEmpty)
                Cataloglist().expand().py16()
              else
                CircularProgressIndicator().centered().expand()
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogTop extends StatelessWidget {
  const CatalogTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.color(context.theme.canvasColor).xl5.bold.make(),
        " Trending Products".text.color(context.theme.canvasColor).xl2.make()
      ],
    );
  }
}

class Cataloglist extends StatelessWidget {
  const Cataloglist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Catalog.products.length,
      itemBuilder: (context, index) {
        final catalog = Catalog.products[index];
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeDetails(
                        catalog: catalog,
                      ))),
          child: CatalogItem(
            catalog: catalog,
          ),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image).w40(context)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.xl2.bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.bold.make(),
                AddToCart()
              ],
            )
          ],
        ))
      ],
    )).color(context.cardColor).roundedLg.square(150).py16.make();
  }
}

class AddToCart extends StatefulWidget {
  const AddToCart({
    super.key,
  });

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      
    }, child: "Buy".text.bold.make());
  }
}
