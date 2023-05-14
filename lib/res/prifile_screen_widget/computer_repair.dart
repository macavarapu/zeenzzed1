import 'package:flutter/material.dart';
class Computerrepairscreen extends StatelessWidget {
   Computerrepairscreen({Key? key}) : super(key: key);

  List<String> item = ["14.png","16.png","9.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Computer repair',style: TextStyle(fontSize: 20,color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 1000,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5.0,
                    child: Container(
                      // height: MediaQuery
                      //     .of(context)
                      //     .size
                      //     .height /2.3,

                      width: MediaQuery
                          .of(context)
                          .size
                          .width +12,
                      alignment: Alignment.center,
                      child:Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Image.asset('assets/image/11.png'),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15,),

                                ),

                                Text('3  Responses',style: TextStyle(fontSize: 15),),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal:  90),
                                  // padding: EdgeInsets.all(20),
                                ),

                                Text('25,jul', style: TextStyle(
                                  fontSize: 16, color: Colors.black,
                                ),),

                              ],
                            ),

                            Row(

                              children: [

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                    ),
                                    Text('Service description',style: TextStyle(fontSize: 20,color: Colors.black),),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                    ),

                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      // crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        // Padding(
                                        //   padding: EdgeInsets.only(left:15 ,top: 15),
                                        // ),

                                        RichText(text: TextSpan(
                                            text: " Once you decide how many service pages you need and what\n services you"
                                                " should highlight, it’s time to\n create the service description content. Check out ",

                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff212325)

                                            ),

                                        )),

                                      ],
                                    ),


                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text('Request Responce',style: TextStyle(fontSize: 30,color: Colors.black),),
                              ],
                            ),

                            SizedBox(height: 30,),
                            SingleChildScrollView(
                              child: Column(

                                children: [
                                  Container(
                                    height: 1000,
                                    child: ListView.builder(
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
                                                .height /4,
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
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,

                                                    children: [

                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
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

                                                              Text('Estimter cost\n'
                                                                  '20.50'),
                                                              Padding(
                                                                padding: EdgeInsets.symmetric(horizontal:  50),
                                                                // padding: EdgeInsets.all(20),
                                                              ),

                                                              Text('ignore', style: TextStyle(
                                                                fontSize: 16, color: Colors.black,
                                                              ),),
                                                              Padding(
                                                                padding: EdgeInsets.symmetric(horizontal:  10),
                                                                // padding: EdgeInsets.all(20),
                                                              ),

                                                              Text('Accepet', style: TextStyle(
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
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),

                      ),

                      // Text('Item $index'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
