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
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: containercolor),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
            Text(text2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
          ],
        ),
      ),
      
    );
  }
}
