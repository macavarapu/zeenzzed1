import 'package:flutter/material.dart';
class servuceandmyrefferalcard extends StatelessWidget {

   String name;
  // String image;
  var size,screenheight,screenwidth;

  var amount;


   servuceandmyrefferalcard(this.amount , this.name);
      // {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    screenheight = size.height;
    screenwidth   = size.width;
    return Container(
      height: 50,
      width: screenwidth-40,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
            color: Colors.black87,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),

      child: Row(

        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              name,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),


          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 5),

                child: Text(""+amount.toString(), style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                )),
              ),

              Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white,),
            ],
          ),
        ],
      ),


    );
  }
}
