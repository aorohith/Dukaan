import 'package:flutter/material.dart';
import 'package:ui_designs/Dukaan_Accounts/refactor.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {     
    return Scaffold(
      appBar: AppBar(
        title: const Text("Additional Information"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          AdditionalTiles(
            leadIcon: Icons.share,
            text: 'Share Dukan App',
            trailIcon: Icon(Icons.arrow_forward_ios),
          ),
          AdditionalTiles(
            leadIcon: Icons.mark_chat_read_rounded,
            text: 'Change Language',
            trailIcon: Icon(Icons.arrow_forward_ios),
          ),
          AdditionalTiles(
            leadIcon: Icons.whatsapp,
            text: 'Whatsapp Chat Support',
            trailIcon: Switch(
              onChanged: editStatus(),
              value: true,
              inactiveThumbColor: Colors.blue,
              inactiveTrackColor: Colors.blue[300],
            ),
          ),
          AdditionalTiles(
            leadIcon: Icons.lock,
            text: 'Privacy Policy',
          ),
          AdditionalTiles(
            leadIcon: Icons.star_border_outlined,
            text: 'Rate Us',
          ),
          AdditionalTiles(
            leadIcon: Icons.logout,
            text: 'Sign Out',
          ),
        ],
      ),
    );
  }

  editStatus() {}
}
