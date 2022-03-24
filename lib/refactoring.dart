import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdditionalTiles extends StatelessWidget {

  final leadIcon;
  final text;
  final trailIcon;

   AdditionalTiles({ Key? key, required this.leadIcon, required this.text, this.trailIcon }) : super(key: key);

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
  const CardStore({ Key? key,required this.boxIcon,required this.text1,required this.text2,required this.boxColor}) : super(key: key);

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
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: boxColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Icon(boxIcon,color: Colors.white,),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(text1,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                       Text(text2,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                );
  }
}