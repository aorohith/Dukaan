import 'package:flutter/material.dart';

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
                              fontSize: 18,
                              color: Color.fromARGB(255, 194, 193, 193)),
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("1 ITEM",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        )),
                    Wrap(
                      children: [
                        Icon(Icons.receipt, color: Colors.blue),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 4),
                          child: Text(
                            "RECEIPT",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
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
                      Text("1 piece",style: TextStyle(fontWeight: FontWeight.w600,height:2),),
                      Text("Size: XL"),
                      Row(
                        mainAxisAlignment: ,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Wrap(
                              children: [
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    // color: Colors.blue,
                                    border: Border.all(color: Colors.blue)
                                  ),
                                  child: Center(child: Text("1")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:5.0),
                                  child: Text("  x ₹799",style: TextStyle(color: Colors.black),),
                                )
                              ],
                            ),
                          ),
                          Text("₹799")
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
