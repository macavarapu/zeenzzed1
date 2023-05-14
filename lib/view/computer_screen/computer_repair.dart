import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../refer_screen/refer_to.dart';

class Computerrepair extends StatelessWidget {
  const Computerrepair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Computer repair',
          style: TextStyle(color: Color(0xff212325)),),
        backgroundColor: Color(0xffFFFFFF),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(

            children: [
              SizedBox(height: 5,),
              Image.asset( 'assets/image/11.png'),

              Row(
                children: [

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(height: 15),

                      Row(
                        children: [

                          Image.asset(
                            'assets/image/14.png', height: 50, width: 50,),

                          Column(
                            children: [
                              Text('James smith', style: TextStyle(
                                fontSize: 20, color: Color(0xff212325),
                              ),),

                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star, size: 15, color: Colors.amber,),
                                  Text('4.0',style: TextStyle(fontSize:15,color: Color(0xff212325)),),
                                  //  Padding(padding: EdgeInsets.all(15),),
                                  // Text('Computer repair', style: TextStyle(
                                  //   fontSize: 12, color: Color(0xff212325),
                                  // ),),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                          ),
                          Image.asset('assets/image/20.png',height: 140,
                            alignment:Alignment.topRight ,)
                        ],
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Padding(
                          //     padding: EdgeInsets.only(top: 100),
                          // ),
                          Icon(Icons.location_on, size: 20,),
                          Text('3529 Alexander Drive ,Dalls', style: TextStyle(
                            fontSize: 15, color: Color(0xff212325),
                          ),),

                        ],

                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        ///mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('  3 miles away from your location'
                            , style: TextStyle(
                              fontSize: 15, color: Color(0xff4E4E4E),),),

                        ],

                      ),

                      Container(

                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border:Border.all(color: Color(0xff212325),) ,

                          borderRadius: BorderRadius.circular(30),


                          color: Color(0xff000000CC),
                        ),
                        margin:EdgeInsets.all(35) ,
                        child: Text('Show on map',style: TextStyle(fontSize:20,color: Color(0xff212325)),),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(" Service description",
                            style: TextStyle(fontSize: 20,
                              color: Color(0xff212325),
                            ),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("   orem lpsum is  simply dummmy text of the printing\n "
                              "  and typesetting industry. Lorem lpsum has been "
                              " the \n industry's standard dummy text ever since"
                              " the \n 1500s, where an unknown printer took a "
                              "galley of type\n   and scrambled it to make a type"
                              "specimen book.",
                            style:TextStyle(fontSize: 16,color: Color(0xff4E4E4E)) ,),
                        ],
                      ),
                      SizedBox(height: 30,),
                      InkWell(
                        onTap: (){
                         Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>  ReferTo ()),
                            //(Route<dynamic> route) => false
                         );
                        },
                        child:  Row(
                          children: [

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 60,),
                              // padding: EdgeInsets.only(left: 2, right: 10),
                            ),

                            Icon(Icons.replay_outlined, size: 30, color: Colors.black,),
                            Text('reply',style: TextStyle(color: Color(0xff212325)),),

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              // padding: EdgeInsets.all(20),
                            ),


                            Icon(Icons.chat,size: 30,color: Color(0xff00032B),),
                            Text('Chat', style: TextStyle(
                              fontSize: 16, color: Color(0xff00032B),
                            ),),

                          ],
                        ),


                      ),

                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
