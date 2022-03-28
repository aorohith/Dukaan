import 'package:flutter/material.dart';


//##################..Product Section...####################

class ProductTile extends StatelessWidget {
  final img;
  final title;
  final piece;
  final price;
   ProductTile({Key? key, required this.img, required this.title, required this.piece, required this.price,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: ClipRRect(borderRadius: BorderRadius.circular(8.0),child: Image.asset(img,fit: BoxFit.cover,)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom:10.0),
                          child: Text(
                            title,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "$piece piece",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        SizedBox(height: 5,) ,
                        Text(
                          "₹$price",
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                         const SizedBox(height: 5,) ,
                        const Text(
                          "In stock",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                        ),
                        Switch(
                          onChanged: editStatus(),
                          value: true,
                          inactiveThumbColor: Colors.blue,
                          inactiveTrackColor: Colors.blue[300],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.share_outlined),
                  SizedBox(width: 5,),
                  Text("Share the Products",style: TextStyle(fontSize: 16) ,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  editStatus() {}
}