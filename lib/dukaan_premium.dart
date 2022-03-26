import 'package:flutter/material.dart';

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
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                    width: 340,
                    height: 200,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    border: Border.all(),
                    color: Colors.red,
                    ),
                  ),
  
              ],
            ),
          ],
        ),
      ),
    );
  }
}
