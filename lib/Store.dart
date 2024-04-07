// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_learning/Cart_page.dart';
import 'package:flutter_learning/models/cart.dart';
import 'package:flutter_learning/models/catalo.dart';

class MyStore extends VxStore {
  Catalog catalog;
  CartList cart;

  MyStore() {
    catalog = Catalog();
    cart = Cartlist() as CartList;
    cart.catalog = Catalog();
  }
}
