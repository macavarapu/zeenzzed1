
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../profile_screen/profile_screen.dart';
class  RequestService extends StatelessWidget {
  RequestService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        // title: Text('',
        //  // 'Request a Service',style: TextStyle(fontSize: 25,color:Color(0xff212325)),
        // ),

        actions: [

          Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10)),
         SizedBox(height: 20,),
          ElevatedButton(
              child: Text(
                  "'Request".toUpperCase(),
                  style: TextStyle(fontSize: 14)
              ),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xff212325)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Color(0xff212325))
                      )
                  )
              ),
             onPressed: (){

               Navigator.of(context).push(
                   MaterialPageRoute(
                       builder: (context) =>  Profilescreen   ()));
             },
             // onPressed: () => null
          ),

         ],
      ),
      body: SingleChildScrollView(
        child: Column(

          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(

              //  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  //SizedBox(height: 20,),
                  Text('Request a Service',style: TextStyle(fontSize: 25,color:Color(0xff212325)),),
                  Text('In which  categary  you want  to create a service ?',
                    style: TextStyle(fontSize: 15,color:Color(0xff212325) ),),
                  SizedBox(height: 5,),
                  InkWell(
                    onTap: (){},
                    child: Card(
                      color: Color(0xffEFEFEF),
                      child: ListTile(
                        title: Text('Handyman',style: TextStyle(color:Color(0xff212325) ),),
                        trailing: Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xff212325),),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Card(
                    clipBehavior: Clip.hardEdge,
                    color: Color(0xffEFEFEF),
                    child: SizedBox(
                      width: 300,
                      height: 100,
                      child: Center(child: Text('Address',
                        style: TextStyle(color:Color(0xff9B9B9B) ),)),

                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(height: 15,),
                  Text('(Or)',style: TextStyle(fontSize: 20,color: Color(0xff212325)),),
                  //  SizedBox(height: 2,),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    decoration:  BoxDecoration(
                        color: Colors.white38,
                        border: Border.all(
                          color: Color(0xffEFEFEF),
                          //color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Icon(
                          Icons.score_outlined, size: 20, color: Colors.black,),
                        Text('locate me',style: TextStyle(color: Color(0xff9B9B9B)),),

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Card(
                    clipBehavior: Clip.hardEdge,
                    color: Color(0xffEFEFEF),
                    child: SizedBox(
                      width: 500,
                      height: 150,
                      child: Center(child: Text('Deseribe about your reruest....',
                        style: TextStyle(fontSize:16,color: Color(0xff9B9B9B)),
                      )),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child:Text('Upload relevant photos',style: TextStyle(fontSize: 20,color: Color(0xff212325)),),
                      ),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 90,
                        child: GridView.count(
                          scrollDirection: Axis.horizontal,
                          crossAxisCount: 1 ,
                          children: List.generate(1,(index_1){
                            return Container(
                              child: Card(
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: (){

                                      },
                                      child:   Icon(Icons.add,color:Color(0xff212325) ,),
                                    ),
                                    //  Image.asset('assets/image/wrong.png',height: 10,) ,
                                    //  Icon(Icons.add,color:Color(0xff212325) ,),
                                    ///  Text('ZENZZED',style: TextStyle(color: Color(0xff212325)),),

                                  ],
                                ),
                                color: Color(0xffEFEFEF),
                                // color: Colors.white30,
                              ),
                            );

                          }),
                        ),
                      ),
                      //  Imagepicker() ,
                    ],
                  ),
                ]
            ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffE8E8E8),
        child: Row(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                height: 60,
                child: InkWell(
                  onTap: (){
                  },
                  child: Column(
                    children: [
                      Icon(Icons.dashboard,color: Color(0xff212325),size: 30,),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 60,
                child: InkWell(
                  onTap: (){
                  },
                  child: Column(
                    children: [
                      Icon(Icons.add_circle_sharp,color: Color(0xff212325),size: 50,),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 60,
                child: InkWell(
                  onTap: (){
                  },
                  child: Column(
                    children: [
                      Icon(Icons.person_outline,color: Color(0xff212325),size:30 ,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


