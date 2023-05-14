import 'package:flutter/material.dart';
class listviewtopserch extends StatelessWidget {
  String image;
  String name;

   listviewtopserch(this.name, this.image,
       {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> services = ["17.png","17.png","18.png","19.png","19.png"];
    List<String> names = ["Handyman","Movers","Plumbers","Grocery","More"];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,

      children: [
        SizedBox(height: 15,),
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top searched services',
                style: TextStyle(
                  fontSize: 20,

                  color: Color(0xff212325),
                ),
              ),

              // Image.asset('assets/image/$image' ,height: 20,'),

            ],
          ),
        ),
        SizedBox(
            height:100 ,child: Expanded(
            child: ListView.builder(

                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                // shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: services.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    //// height: 100,
                    //width: 40,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      // BoxShadow(
                      //     color: Colors.grey.withOpacity(0.5),
                      //     spreadRadius: 1,
                      //     blurRadius: 6),
                    ]),
                    child: Column(
                      children: [
                        Image.asset('assets/image/${services[index]}', height: 30,width: 30,),

                        Text(names[index]),
                      ],
                    ),


                  );


                })))
      ],
    );
  }

}

