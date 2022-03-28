import 'package:flutter/material.dart';

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