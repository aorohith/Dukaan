import 'package:flutter/material.dart';

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
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
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