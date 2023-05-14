import 'package:flutter/material.dart';
class listviewservice extends StatelessWidget {
  final String text;
  final Title? title;
  listviewservice({Key? key,required this.text,this.title,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Service request near you',
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                  color: Color(0xff212325),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
                child: Text(text??'view all',
                  style: TextStyle(
                      fontSize: 15,
                      //fontWeight: FontWeight.bold,
                      color: Color(0xff212325)),
                ),
              ),
            ],
          ),
        ),


      ],
    );
  }
}

