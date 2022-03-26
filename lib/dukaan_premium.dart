import 'package:flutter/material.dart';
import 'package:ui_designs/refactoring.dart';

class PremiumPage extends StatelessWidget {
  const PremiumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("Ducan Premium"),
        leading: Icon(Icons.arrow_back),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.blue,
                      child: Column(),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                  width: 360,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: Color.fromARGB(255, 218, 216, 216)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blue),
                            child: Icon(
                              Icons.local_mall_rounded,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "dukaan",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "PREMIUM",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                        ],
                      ),
                      Text("Get Dukaan Premium for just\n₹4,999/year",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center),
                      Text(
                        "All the advanced features of scaling your\nGet Dukaan Premium for just",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Freatures",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  PremiumFeatures(
                    title: "Custom domain name",
                    subTitle:
                        "Get your own custom domain and build \nyour brand on the internet.",
                    tileIcon: Icons.language_rounded,
                  ),
                  PremiumFeatures(
                    title: "Custom domain name",
                    subTitle:
                        "Get your own custom domain and build \nyour brand on the internet.",
                    tileIcon: Icons.verified_outlined
                  ),
                  PremiumFeatures(
                    title: "Custom domain name",
                    subTitle:
                        "Get your own custom domain and build \nyour brand on the internet.",
                    tileIcon: Icons.laptop_mac_sharp,
                  ),
                  PremiumFeatures(
                    title: "Custom domain name",
                    subTitle:
                        "Get your own custom domain and build \nyour brand on the internet.",
                    tileIcon: Icons.headset_mic_outlined,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
