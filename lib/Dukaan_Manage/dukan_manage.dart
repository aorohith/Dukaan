import 'package:flutter/material.dart';
import 'package:ui_designs/Dukaan_Manage/refactor.dart';

class ManageScreen extends StatefulWidget {
  const ManageScreen({Key? key}) : super(key: key);

  @override
  State<ManageScreen> createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 241, 241),
      appBar: AppBar(
        title: Text("Manage Store"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: GridView(
              children: [
                CardStore(
                  boxIcon: Icons.campaign,
                  text1: "Marketing",
                  text2: "Designing",
                  boxColor: Color(0xffF16E18),
                ),
                CardStore(
                    boxIcon: Icons.currency_rupee,
                    text1: "Online",
                    text2: "Payments",
                    boxColor: Color(0xff63D461)),
                CardStore(
                    boxIcon: Icons.ac_unit,
                    text1: "Discount",
                    text2: "Coupons",
                    boxColor: Color(0xffF6B152)),
                CardStore(
                    boxIcon: Icons.switch_account_rounded,
                    text1: "My",
                    text2: "Customers",
                    boxColor: Color(0xff13AD9E)),
                CardStore(
                    boxIcon: Icons.qr_code,
                    text1: "Store QR",
                    text2: "Code",
                    boxColor: Color(0xff7D7D7D)),
                CardStore(
                    boxIcon: Icons.bookmarks_sharp,
                    text1: "Extra",
                    text2: "Charges",
                    boxColor: Color(0xff6E41B1)),
                CardStore(
                  boxIcon: Icons.format_align_left,
                  text1: "Order",
                  text2: "Form",
                  boxColor: Color(0xffC15A85),
                  newStatus: true,
                ),
              ],
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 30 / 20,
              )),
        ),
      ),
    );
  }
}
