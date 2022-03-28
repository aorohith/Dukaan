import 'package:flutter/material.dart';
import 'package:ui_designs/dukaan_products.dart';

class CatalogueScreen extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Products'),
    Tab(text: 'Categories'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle:true,
          title: Text("Catalogue"),
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            return ProductPage();
          }).toList(),
        ),
      ),
    );
  }
}
