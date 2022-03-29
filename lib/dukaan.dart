import 'package:flutter/material.dart';
import 'package:ui_designs/Dukaan_Catalogue/ducaan_catalogue.dart';
import 'package:ui_designs/Dukaan_Manage/dukan_manage.dart';
import 'package:ui_designs/Dukaan_Payments/dukaan_payments.dart';
import 'package:ui_designs/Dukaan_Premium/dukaan_premium.dart';
import 'package:ui_designs/Dukaan_Accounts/dukan_account.dart';

class Dukan extends StatefulWidget {
  const Dukan({Key? key}) : super(key: key);

  @override
  State<Dukan> createState() => _DukanState();
}

class _DukanState extends State<Dukan> {
  int _currentSelectIndex = 0;
  final _pages = [
    PremiumPage(),
    PaymentScreen(),
    CatalogueScreen(),
    ManageScreen(),
    ContactScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentSelectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentSelectIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (indx) {
          setState(
            () {
              _currentSelectIndex = indx;
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.currency_rupee_sharp), label: "Orders"),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined), label: "Products"),
          BottomNavigationBarItem(icon: Icon(Icons.bolt), label: "Manage"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Accounts"),
        ],
      ),
    );
  }
}
