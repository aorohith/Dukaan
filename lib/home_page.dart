import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Additional Information"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            const ListTile(
              leading: Icon(Icons.share),
              title: Text(
                "Share Dukaan App",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.mark_chat_read_rounded),
              title: Text(
                "Change Language",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.whatsapp),
              title: Text(
                "Whatsapp Chat Support",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Switch(
                onChanged: editStatus(),
                value: true,
                inactiveThumbColor: Colors.blue,
                inactiveTrackColor: Colors.blue[300],
              ),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text(
                "Privacy Policy",
                style: TextStyle(fontSize: 20),
              ),
            ),

            ListTile(
              leading: Icon(Icons.star_border_outlined),
              title: Text(
                "Rate Us",
                style: TextStyle(fontSize: 20),
              ),
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Log Out",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ));
  }

  editStatus() {}
}
