import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/model/product.dart';
import 'package:shop_app/services/fetch_products.dart';
import 'package:shop_app/utils/colors.dart';
import 'package:shop_app/widgets/cloth_list.dart';
import 'package:shop_app/widgets/cusom_swiper.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List<Products> products = [];
  final dref = FirebaseDatabase.instance.reference();

  getData() {
    dref.get().then((DataSnapshot dataSnapshot) {
      print(dataSnapshot.value["products"]);
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: "Home Page".text.color(txtColor).extraBold.size(30).make(),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              getData();
            },
            icon: const Icon(
              Icons.local_mall,
              color: txtColor,
            ),
          ),
        ],
      ),
      body: VStack(
        [
          customSwiper(),
          clothList(),
          FutureBuilder(
              future: fetchProducts(products),
              builder: (context, snapshot) => snapshot.hasData
                  ? clothList()
                  : const CircularProgressIndicator())
        ],
      ).scrollVertical(),
    );
  }
}
