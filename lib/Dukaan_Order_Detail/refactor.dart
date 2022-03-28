import 'package:flutter/material.dart';

//####################..Date Row Section...#####################

class DateRow extends StatelessWidget {
  const DateRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "May 31, 05:42 PM",
          style: TextStyle(fontSize: 20),
        ),
        Wrap(
          spacing: 5,
          children: const [
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
    );
  }
}

//####################...Item Detail...######################

class ItemDetail extends StatelessWidget {
  const ItemDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
            style: TextStyle(fontWeight: FontWeight.w600, height: 2),
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
                    const Padding(
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
    );
  }
}

//####################....Order details...####################

class ReceiptShare extends StatelessWidget {
  final text1;
  final text2;
  final iconData;
  const ReceiptShare({
    Key? key,
    required this.text1,
    required this.text2,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text1,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            )),
        Wrap(
          children: [
            Icon(iconData, color: Colors.blue),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 4),
              child: Text(
                text2,
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
    );
  }
}

//#################....Customer Details...#####################

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
              child: const Icon(
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
    );
  }
}

//###################......Deepa text style...################

Widget addressHead({required address}) {
  return Text(
    address,
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  );
}

Widget textData({required data}) {
  return Text(
    data,
    style: TextStyle(fontSize: 18.0),
  );
}

Widget addressFormat({required txt1, required txt2}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(children: [addressHead(address: txt1)]),
      SizedBox(
        height: 5,
      ),
      Row(children: [textData(data: txt2)])
    ],
  );
}

//################..Payment Status..#################

class PaymentStatus extends StatelessWidget {
  const PaymentStatus({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    addressFormat(txt1: "Payment", txt2: "Online"),
                    Container(
                      width: 50,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 200, 250, 202),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Center(
                          child: Text(
                        "PAID",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    )
                  ],
                );
  }
}
