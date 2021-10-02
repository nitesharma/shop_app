import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:shop_app/model/product.dart';

Future<List<Products>> fetchProducts(List<Products> products) async {
  final dref = FirebaseDatabase.instance.reference();
  final getData = dref.get();
  getData.then((snapshot) {
    products = (snapshot.value["products"] as List)
        .map((data) => Products.fromJsom(data))
        .toList();
  });
  return products;

  dref.once().then((snapshot) {
    List<Products> products = (jsonDecode(snapshot.value) as List)
        .map((data) => Products.fromJsom(data))
        .toList();
    return products;
  });
  dref.get();
}
