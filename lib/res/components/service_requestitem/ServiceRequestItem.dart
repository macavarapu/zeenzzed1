import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../view/refer_screen/refer_to.dart';
import '../../../view/computer_screen/computer_repair.dart';

class ServiceRequestItem extends StatelessWidget {

  String image;
  String proimage;
  Color background;
  Color textcolor;
  BuildContext context;
  bool isPlus;

  ServiceRequestItem(this.image, this.proimage, this.background, this.textcolor,
      this.context, this.isPlus);

  @override
  Widget build(BuildContext context) {

    // _listviewdata2(Color background,Color textcolor,bool isPlus) {
    //   List<String> services = ["11.png","13.png","12.png"];
    //   List<String> item = ["14.png","15.png","16.png"];
    //   // var size,screenheight,screenwidth;
    //   return SizedBox(
    //
    //       height:420 ,
    //       child:ListView.builder(
    //           physics: ClampingScrollPhysics(),
    //
    //           scrollDirection: Axis.horizontal,
    //           shrinkWrap: true,
    //           // shrinkWrap: true,
    //           // physics: NeverScrollableScrollPhysics(),
    //           itemCount: services.length,
    //           itemBuilder: (BuildContext context, int index) {
    //             return  ServiceRequestItem(services[index],item[index], background,textcolor,context,isPlus);
    //           }));
    //
    // }

    return Container(
        color: Colors.white,
        height: 100,
        // alignment: Alignment.topLeft,
        // height: screenheight/6,
        width: 410,
        // fit: BoxFit.cover,

        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
          color: background,
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Computerrepair()));
                },
                child: Image.asset(
                  'assets/image/$image',
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                ),
              ),

              // Image.asset('assets/image/$image', alignment: Alignment.topRight
              //   ),
              Column(
                children: [
                  // SizedBox(height:0.9,width:10,),

                  if (isPlus)
                    Align(
                      alignment: Alignment(0.9, 0.3),
                      heightFactor: 0.10,
                      child: FloatingActionButton(
                        backgroundColor: Colors.black,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Computerrepair()));
                          // Navigator.of(context ).push
                          // (MaterialPageRoute(builder: (context)=> Searchservice()));
                        },
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.only(top: 2),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/image/$proimage',
                            height: 50,
                            width: 50,
                          ),
                          // Icon(Icons.person_outline,size: 80,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'James smith',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: textcolor,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    '4.0',
                                    style: TextStyle(color: Color(0xff212325)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15),
                                  ),
                                  Text(
                                    'Computer repair',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20,
                          ),
                          Text(
                            '3529 Alexander Drive ,Dalls',
                            style: TextStyle(
                              fontSize: 20,
                              color: textcolor,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RichText(
                              text: TextSpan(
                                  text:
                                      "  I request you to please send my laptop for\n repariring as soon as"
                                      " possible so",
                                  style:
                                      TextStyle(fontSize: 15, color: textcolor
                                          // color: Colors.black,
                                          ),
                                  children: [
                                TextSpan(
                                    text: " More...",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: textcolor
                                        // fontWeight: FontWeight.bold
                                        ))
                              ])),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            // padding: EdgeInsets.only(left: 2, right: 10),
                          ),
                          Icon(
                            Icons.send,
                            size: 30,
                            color: textcolor,
                          ),
                          Text('3.mi'),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 110),
                            // padding: EdgeInsets.all(20),
                          ),
                          Text(
                            '25,jul',
                            style: TextStyle(
                              fontSize: 16,
                              color: textcolor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
