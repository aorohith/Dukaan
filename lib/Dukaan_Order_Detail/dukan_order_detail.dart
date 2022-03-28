import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_designs/Dukaan_Order_Detail/refactor.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Order #1618477"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const DateRow(),
                const Divider(
                  height: 30,
                  thickness: 1,
                ),
                const ReceiptShare(
                    text1: "1 ITEM", text2: "RECEIPT", iconData: Icons.receipt),
                const ItemDetail(),
                const Divider(
                  height: 30,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textData(data: "Item Total"),
                      textData(data: "₹799")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textData(data: "Delivery"),
                      const Text(
                        "FREE",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Grand Total",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600)),
                    Text("₹799",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600))
                  ],
                ),
                const Divider(
                  height: 30,
                  thickness: 1,
                ),
                const ReceiptShare(
                    text1: "CUSTOMER DETAILS",
                    text2: "SHARE",
                    iconData: Icons.share_outlined),
                CustomerDetails(),
                addressFormat(
                  txt1: "Address",
                  txt2: "D 1101 Chartered Beverly\nHills,Subramanyapuram PO",
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    addressHead(address: "City"),
                    const SizedBox(width: 150),
                    addressHead(address: "Pincode"),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    textData(data: "Banglore"),
                    SizedBox(width: 119),
                    textData(data: "560061")
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const PaymentStatus(),
                const Divider(
                  height: 30,
                  thickness: 1,
                ),
                Row(
                  children: const [
                    Text(
                      "ADDITIONAL INFORMATIONS",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                addressFormat(txt1: "State", txt2: "Karnataka"),
                const SizedBox(
                  height: 10,
                ),
                addressFormat(txt1: "Email", txt2: "greeniceaqua@gmail.com"),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    primary: Colors.white,
                    onPrimary: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          width: 1.0,
                          color: Colors.blue,
                        )),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Share Receipt",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
