import 'package:flutter_learning/models/catalo.dart';

class Cartlist {
  late Catalog _catalog;
  final List<int> itemsids = [];

  Catalog get catalog => _catalog;
  set catalog(Catalog newcatalog) {
    _catalog = newcatalog;
  }

  List get items => itemsids.map((id) => _catalog.getbyid(id)).toList();

  num get totalprice =>
      items.fold(0, (previousValue, element) => previousValue + element);

  void add(Item item) {
    itemsids.add(item.id);
  }

  void remove(Item item) {
    itemsids.remove(item.id);
  }
}
