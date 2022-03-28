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
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
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

  const PremiumContact(
      {Key? key, required this.contactIcon, required this.contactText})
      : super(key: key);

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
            Text(
              contactText,
              style: TextStyle(
                  color: Color.fromARGB(255, 121, 120, 120),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
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

//###################......Deepa text style
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

//##################..Product Section...####################

class ProductTile extends StatelessWidget {
  final img;
  final title;
  final piece;
  final price;
   ProductTile({Key? key, required this.img, required this.title, required this.piece, required this.price,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: ClipRRect(borderRadius: BorderRadius.circular(8.0),child: Image.asset(img,fit: BoxFit.cover,)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom:10.0),
                          child: Text(
                            title,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "$piece piece",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        SizedBox(height: 5,) ,
                        Text(
                          "₹$price",
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                         SizedBox(height: 5,) ,
                        Text(
                          "In stock",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                        ),
                        Switch(
                          onChanged: editStatus(),
                          value: true,
                          inactiveThumbColor: Colors.blue,
                          inactiveTrackColor: Colors.blue[300],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share_outlined),
                  SizedBox(width: 5,),
                  Text("Share the Products",style: TextStyle(fontSize: 16) ,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  editStatus() {}
}
