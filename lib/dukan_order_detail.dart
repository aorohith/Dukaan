import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_designs/refactoring.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text("Order #1618477"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "May 31, 05:42 PM",
                      style: TextStyle(fontSize: 20),
                    ),
                    Wrap(
                      spacing: 5,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Icon(
                            Icons.circle,
                            size: 13,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          "Delivered",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 136, 135, 135),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                ),
                ReceiptShare(
                    text1: "1 ITEM", text2: "RECEIPT", iconData: Icons.receipt),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0),
                  leading: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("assets/images/download.jpg")),
                  title: Text("Explore | Men | Navy Blue"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1 piece",
                        style:
                            TextStyle(fontWeight: FontWeight.w600, height: 2),
                      ),
                      Text("Size: XL"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Wrap(
                              children: [
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      border: Border.all(color: Colors.blue)),
                                  child: Center(child: Text("1")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    "  x ₹799",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text("₹799", style: TextStyle(color: Colors.black))
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
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
                      Text(
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
                  children: [
                    Text("Grand Total",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600)),
                    Text("₹799",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600))
                  ],
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                ),
                ReceiptShare(
                    text1: "CUSTOMER DETAILS",
                    text2: "SHARE",
                    iconData: Icons.share_outlined),
                ListTile(
                  contentPadding: EdgeInsets.only(
                    left: 0,
                    right: 0,
                  ),
                  title: addressHead(address: "Deepa"),
                  subtitle: Text(
                    "+91-7829000484",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  trailing: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3, right: 15),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Icon(
                            Icons.phone,
                            color: Colors.blue,
                            size: 20,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.whatsapp_outlined,
                        color: Colors.green,
                        size: 35,
                      ),
                    ],
                  ),
                ),
                addressFormat(
                  txt1: "Address",
                  txt2: "D 1101 Chartered Beverly\nHills,Subramanyapuram PO",
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    addressHead(address: "City"),
                    SizedBox(width: 150),
                    addressHead(address: "Pincode"),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    textData(data: "Banglore"),
                    SizedBox(width: 119),
                    textData(data: "560061")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    addressFormat(txt1: "Payment", txt2: "Online"),
                    Container(
                      width: 50,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 200, 250, 202),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                          child: Text(
                        "PAID",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    )
                  ],
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                ),
                Row(
                  children: [
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
                SizedBox(height:15),
                addressFormat(txt1: "State", txt2: "Karnataka"),
                SizedBox(
                  height: 10,
                ),
                addressFormat(txt1: "Email", txt2: "greeniceaqua@gmail.com"),
                SizedBox(
                  height: 40,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    primary: Colors.white,
                    onPrimary:Colors.blue,
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(width: 1.0, color: Colors.blue,)
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Share Receipt",style: TextStyle(fontSize: 20),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
