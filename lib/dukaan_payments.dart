import 'package:flutter/material.dart';
import 'package:ui_designs/refactoring.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payments"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.info_outline_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Taransaction Limit",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                            "A free limit up to wich you will receive\nthe online payments directlyin your bank"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            LinearProgressIndicator(
                              value: 0.30,
                              semanticsLabel: 'Linear progress indicator',
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("36,668 left out of ₹50,000"),
                            ),
                          ],
                        ),
                        ElevatedButton(onPressed: () {}, child: const Text("Increase Limit")),
                      ],
                    ),
                  ),
                ),
              ),
              PaymentTile(text1: "Default Method", text2: "Online Payments"),
              PaymentTile(text1: "Payment Profile", text2: "Bank Account"),
              const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            PaymentTile(text1: "Payments Overview", text2: "Life Time",tileIcon: Icons.keyboard_arrow_down_outlined),
            ],
          ),
          ]
        ),
      ),
    );
  }
}
