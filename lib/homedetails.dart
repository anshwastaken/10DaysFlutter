import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learning/models/catalo.dart';
import 'package:flutter_learning/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetails extends StatelessWidget {
  final Item catalog;

  const HomeDetails({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyThemes.creamcolor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(alignment: MainAxisAlignment.spaceBetween,
                children: [
                  "\$${catalog.price}".text.color(Colors.blue).bold.make(),
                  ElevatedButton(onPressed: (){}, child: "Buy".text.xl.bold.make()
                  )
                  ],
              ).wh(100, 50),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)
              ).h32(context),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.convey,
                  edge: VxEdge.top,
                  child: Container(
                    color: context.cardColor,
                    child: Column(
                      children: [
                        catalog.name.text.xl6.bold.make(),
                        catalog.desc.text.textStyle(context.captionStyle).make(),
                      ],
                    ).py64(),
                    
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
