import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdditionalTiles extends StatelessWidget {
  final leadIcon;
  final text;
  final trailIcon;

  AdditionalTiles(
      {Key? key, required this.leadIcon, required this.text, this.trailIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadIcon),
      title: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
      trailing: trailIcon,
    );
  }
}

//Refactoring for Dukan Home page########################

class CardStore extends StatelessWidget {
  final boxIcon;
  final boxColor;
  final text1;
  final text2;
  final newStatus;
  final textStyles = const TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  CardStore(
      {Key? key,
      required this.boxIcon,
      required this.text1,
      required this.text2,
      required this.boxColor,
      this.newStatus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: boxColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Icon(
                      boxIcon,
                      color: Colors.white,
                    ),
                  ),
                ),
                Visibility(
                  visible: newStatus,
                  child: Container(
                      width: 40,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Color(0xff17B51C),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          "New",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text1,
              style: textStyles,
            ),
            Text(
              text2,
              style: textStyles,
            ),
          ],
        ),
      ),
    );
  }
}

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

// ####################..Premium page features..###########

class PremiumFeatures extends StatelessWidget {
  final title;
  final subTitle;
  final tileIcon;
  const PremiumFeatures({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.tileIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
        leading: Container(
          width: 50,
          height:50,
          decoration: BoxDecoration(border: Border.all(
      color: Colors.blue,
    ),borderRadius: BorderRadius.all(Radius.circular(25)),),
          child: Icon(
            tileIcon,
            color: Colors.blue,
            size: 30,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subTitle,
          style: TextStyle(height: 1.5, fontSize: 15),
        ),
        // leading:,
      ),
    );
  }
}

//##################...Premium Contact refactoring..###################

class PremiumContact extends StatelessWidget {
  final contactIcon;
  final contactText;

  const PremiumContact({ Key? key, required this.contactIcon, required this.contactText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color.fromARGB(255, 223, 223, 223))),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(contactIcon),
                            Text(contactText,style: TextStyle(color: Color.fromARGB(255, 121, 120, 120), fontSize: 15,fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    );
  }
}


