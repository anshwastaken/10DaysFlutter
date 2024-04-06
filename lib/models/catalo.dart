import 'package:flutter/foundation.dart';

class Catalog {
  static List<Item> products = [
    Item(
        id: 1,
        name: "Iphone 1",
        desc: "Very Sasta Phone",
        price: 100,
        color: "#62daff",
        image:
            "https://cdn.mos.cms.futurecdn.net/yDn3ZSXu9eSBxmXQDZ4PCF-1200-80.jpg")
  ];

   getbyid(int id) =>
      products.firstWhere((element) => element.id == id, orElse: null);

  getbyposition(int pos) => products[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["map"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}
