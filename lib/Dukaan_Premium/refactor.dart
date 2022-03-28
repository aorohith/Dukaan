import 'package:flutter/material.dart';

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

//###############...Premium Contents...#################

class Accordion extends StatefulWidget {
  final String title;
  final String content;

  const Accordion({Key? key, required this.title, required this.content})
      : super(key: key);
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        ListTile(
          title: Text(widget.title),
          trailing: IconButton(
            icon: Icon(
                _showContent ? Icons.minimize : Icons.add),
            onPressed: () {
              setState(() {
                _showContent = !_showContent;
              });
            },
          ),
        ),
        _showContent
            ? Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Text(widget.content),
              )
            : Container()
      ],),
    );
  }
}