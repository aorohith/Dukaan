import 'package:flutter/material.dart';
import 'package:ui_designs/Dukaan_Order_Detail/dukan_order_detail.dart';
import 'package:ui_designs/Dukaan_Payments/refactor.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payments"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetailScreen(),
                  ),
                );
              },
              icon: Icon(Icons.info_outline_rounded),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
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
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text("Increase Limit")),
                        ],
                      ),
                    ),
                  ),
                  const PaymentTile(
                      text1: "Default Method", text2: "Online Payments"),
                  const PaymentTile(
                      text1: "Payment Profile", text2: "Bank Account"),
                  const Divider(
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const PaymentTile(
                      text1: "Payments Overview",
                      text2: "Life Time",
                      tileIcon: Icons.keyboard_arrow_down_outlined),
                ],
              ),
              GridView(
                children: const [
                  PaymentContainer(
                      containercolor: Colors.orange,
                      text1: 'AMOUNT ON HOLD',
                      text2: '₹ 0'),
                  PaymentContainer(
                      containercolor: Colors.green,
                      text1: 'AMOUNT RECIEVED',
                      text2: '₹ 13,332')
                ],
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 20,
                    childAspectRatio: 60 / 35),
                shrinkWrap: true,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "Transactions",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TransactionButtons(
                      text: "On Hold",
                      bgColor: Color.fromARGB(255, 226, 225, 225),
                      fgColor: Colors.grey,
                      size: 88,
                    ),
                    TransactionButtons(
                      text: "Payouts (15)",
                      bgColor: Colors.blue,
                      fgColor: Colors.white,
                      size: 100,
                    ),
                    TransactionButtons(
                      text: "Refunds",
                      bgColor: Color.fromARGB(255, 226, 225, 225),
                      fgColor: Colors.grey,
                      size: 88,
                    ),
                  ],
                ),
              ),
              const OrdersTile(
                assets: "assets/images/p1.jpg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p2.jpg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p3.jpg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947", 
              ),
              const OrdersTile(
                assets: "assets/images/p4.jpg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p11.jpeg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p6.jpeg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p7.jpeg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p8.jpeg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p9.jpeg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p10.jpeg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p11.jpeg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p2.jpg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p1.jpg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p7.jpeg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p8.jpeg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              ),
              const OrdersTile(
                assets: "assets/images/p9.jpeg",
                orderId: "Order #12673432",
                orderDate: "Jul 12, 02:06 PM",
                orderAmount: "799",
                accNo: "8938279237947",
              )
            ],
          ),
        ),
      ),
    );
  }
}
