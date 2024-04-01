class Catalog {
  static final products = [
  Item(
      id: 1,
      name: "Iphone 1",
      desc: "Very Sasta Phone",
      price: 100,
      color: "#62daff",
      image:
          "https://cdn.mos.cms.futurecdn.net/yDn3ZSXu9eSBxmXQDZ4PCF-1200-80.jpg")
  ];
}

class Item {
  final num id;
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
}


