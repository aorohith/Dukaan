import 'package:flutter/material.dart';
import 'package:ui_designs/refactoring.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 222, 222),
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ProductTile(
                      img: "assets/images/p6.jpeg",
                      title: "Couch potato | Women ",
                      piece: 1,
                      price: "799"),
                  ProductTile(
                      img: "assets/images/p7.jpeg",
                      title: "Couch potato | Women ",
                      piece: 1,
                      price: "799"),
                  ProductTile(
                      img: "assets/images/p8.jpeg",
                      title: "Couch potato | Women ",
                      piece: 1,
                      price: "799"),
                  ProductTile(
                      img: "assets/images/p9.jpeg",
                      title: "Couch potato | Women ",
                      piece: 1,
                      price: "799"),
                  ProductTile(
                      img: "assets/images/p10.jpeg",
                      title: "Couch potato | Women ",
                      piece: 1,
                      price: "799"),
                  ProductTile(
                      img: "assets/images/p11.jpeg",
                      title: "Couch potato | Women ",
                      piece: 1,
                      price: "799"),
                  ProductTile(
                      img: "assets/images/p5.jpeg",
                      title: "Couch potato | Women ",
                      piece: 1,
                      price: "799"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
