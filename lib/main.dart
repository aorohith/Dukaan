import 'package:flutter/material.dart';
import 'package:ui_designs/dukaan_premium.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:PremiumPage(),
      
    );
  }
}