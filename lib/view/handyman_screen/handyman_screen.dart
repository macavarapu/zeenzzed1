import 'package:flutter/material.dart';
class HandymanScreen extends StatefulWidget {
  const HandymanScreen({Key? key}) : super(key: key);
  @override
  _HandymanScreenState createState() => _HandymanScreenState();
}
class _HandymanScreenState extends State<HandymanScreen> {

  List<String> services = ["11.png","12.png","13.png"];
  List<String> item = ["14.png","16.png","9.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        centerTitle: true,
        title: Text('HandymanScreen',style: TextStyle(color: Color(0xff212325)),),
        backgroundColor: Color(0xffFFFFFF),
      ),
      body:  ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5.0,
          child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height /2,
            // .width ,
            width: MediaQuery
                .of(context)
                .size
                .width +12,
            alignment: Alignment.center,
            child:Card(
              color: Colors.white,
              child: Column(
                children: [
                  Image.asset('assets/image/${services[index]}'),
                  Column(
                    children: [

                      Align(
                        alignment: Alignment(0.9, 0.3),
                        heightFactor: 0.10,
                        child: FloatingActionButton(

                          backgroundColor: Colors.black,
                          onPressed: (){
                          },
                          child: Icon(Icons.add,),
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
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                          ),

                          Row(

                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                              ),
                              Image.asset(
                                'assets/image/${ item[index]}', height: 50, width: 50,),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20,top: 5),
                                  ),
                                  Text('James smith', style: TextStyle(
                                    fontSize: 19, color: Color(0xff212325),
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  //  SizedBox(height: 15,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left:10 ,top: 10),
                                      ),

                                      Icon(
                                        Icons.star, size: 10, color: Colors.amber,),
                                      Text('4.0',style: TextStyle(color: Color(0xff212325),
                                        fontWeight: FontWeight.bold,
                                      ),

                                      ),
                                      Padding(padding: EdgeInsets.all(15),),
                                      Text('Computer repair', style: TextStyle(
                                          fontSize: 12, color: Color(0xff212325),
                                          fontWeight: FontWeight.bold
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left:15 ,top: 10),
                              ),

                              Icon(Icons.location_on, size: 20,color: Color(0xff969696),),
                              Text('3529 Alexander Drive ,Dalls', style: TextStyle(
                                fontSize: 20, color: Color(0xff969696),
                              ),),
                              // SizedBox(height: 20,),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                          ),
                          // SizedBox(height: 10,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left:10 ,top: 10),
                              ),
                              RichText(text: TextSpan(
                                  text: "  I request you to please send my laptop for\n repariring as soon as"        " possible so",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff212325)

                                  ),
                                  children: [

                                    TextSpan(
                                        text: "  More.....",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff212325),
                                          // fontWeight: FontWeight.bold
                                        )
                                    )
                                  ]
                              )),

                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),

                          //  SizedBox(height: 25,),

                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10,),
                                // padding: EdgeInsets.only(left: 2, right: 10),
                              ),
                              Icon(Icons.send_rounded, size: 30, color: Colors.black,),
                              Text('3.mi'),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal:  110),
                                // padding: EdgeInsets.all(20),
                              ),

                              Text('25,jul', style: TextStyle(
                                fontSize: 16, color: Colors.black,
                              ),),

                            ],
                          ),

                        ],
                      ),
                    ],
                  ),

                ],
              ),

            ),

            // Text('Item $index'),
          ),
        );
      },
    ),



    );
  }
}



























