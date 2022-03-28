import 'package:flutter/material.dart';

//########################## Payment field listtile refactor

class PaymentTile extends StatelessWidget {
  final text1;
  final text2;
  final tileIcon;
  const PaymentTile(
      {Key? key,
      required this.text1,
      required this.text2,
      this.tileIcon = Icons.arrow_forward_ios_outlined})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(text1),
      trailing: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(text2),
          ),
          Icon(tileIcon),
        ],
      ),
    );
  }
}

//##############################..Pyment overview grid

class PaymentContainer extends StatelessWidget {
  final containercolor;
  final text1;
  final text2;
  const PaymentContainer({
    required this.containercolor,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: containercolor),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text1,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
            ),
            Text(
              text2,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}


//############...Dukan Payment Three button row

class TransactionButtons extends StatelessWidget {
  final text;
  final bgColor;
  final fgColor;
  final double size;
  const TransactionButtons({
    Key? key,
    required this.text,
    required this.bgColor,
    required this.fgColor,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
      style: ElevatedButton.styleFrom(
        primary: bgColor, // background
        onPrimary: fgColor, // foreground
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        minimumSize: Size(size, 36),
      ),
    );
  }
}

//###########################...Dukaan Payments list tyle section...###############################


class OrdersTile extends StatelessWidget {
  final assets;
  final orderId;
  final orderDate;
  final orderAmount;
  final accNo;
  const OrdersTile({
    Key? key,
    required this.assets,
    required this.orderId,
    required this.orderDate,
    required this.orderAmount,
    required this.accNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 0),
          leading: Container(width: 40, height: 40, child: Image.asset(assets)),
          title: Text(
            orderId,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(orderDate),
          trailing: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "₹ $orderAmount",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Wrap(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, right: 4.0),
                    child: Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 10,
                    ),
                  ),
                  Text(
                    "Succcesful",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ]),
              ],
            ),
          ), //right of tile
        ),
        Text(
          "₹ $orderAmount deposited to $accNo",
          style: TextStyle(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}