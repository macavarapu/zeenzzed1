import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenzzed1/res/prifile_screen_widget/computer_repair.dart';

import '../../view/computer_screen/computer_repair.dart';
class Myservicerequest extends StatelessWidget {
   Myservicerequest({Key? key}) : super(key: key);
  List<String> services = ["11.png","12.png","13.png"];
  List<String> item = ["14.png","16.png","9.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('My Service Request',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        actions: [

          // IconButton(
          //     onPressed: (){},
          //     icon: Icon(Icons.filter_list,color: Colors.black,)),
          PopupMenuButton<String>(
            color: Colors.black,

              onSelected: (value){
                print(value);
              },
              itemBuilder: (BuildContext Contaxt){
                return [

                  PopupMenuItem(
                    child: Text(' All',style: TextStyle(color: Colors.white),),
                    value: 'All',
                  ),
                  PopupMenuItem(
                    child: Text('In progress',style: TextStyle(color: Colors.white),),
                    value: 'In progress',
                  ),
                  PopupMenuItem(
                    child: Text('Completed',style: TextStyle(color: Colors.white),),
                    value: 'Completed',
                  ),

                ];

              }
          ),
        ],
      ),

      body:  SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {

                },

                // controller: editingController,
                decoration: InputDecoration(
                    labelText: "My service request",

                    hintText: "Search",
                    prefixIconColor: Color(0xff3C3C4399),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),

            ),

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
                          .height /2.3,
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
                            Image.asset('assets/image/11.png'),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10,),
                                  // padding: EdgeInsets.only(left: 2, right: 10),
                                ),
                              //  Icon(Icons.send_rounded, size: 30, color: Colors.black,),
                                Text('Computer Repair',style: TextStyle(fontSize: 15),),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal:  80),
                                  // padding: EdgeInsets.all(20),
                                ),

                                Text('25,jul', style: TextStyle(
                                  fontSize: 16, color: Colors.black,
                                ),),

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

                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10,),
                                          // padding: EdgeInsets.only(left: 2, right: 10),
                                        ),
                                      //  Icon(Icons.send_rounded, size: 30, color: Colors.black,),
                                        Text('3  Responses'),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal:  90),
                                          // padding: EdgeInsets.all(20),
                                        ),

                                        ElevatedButton.icon(

                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>  Computerrepairscreen()));
                                          },

                                          icon: Icon( // <-- Icon
                                            Icons.edit,
                                            size: 24.0,
                                          ),
                                          label: Text('Edite'),
                                          // <-- Text
                                        ),
                                        // Text('25,jul', style: TextStyle(
                                        //   fontSize: 16, color: Colors.black,
                                        // ),),

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

    );
  }

  }

