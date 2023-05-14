import 'package:flutter/material.dart';

import '../profile_screen/profile_screen.dart';
class Notificationscreen extends StatelessWidget {
   Notificationscreen({Key? key}) : super(key: key);
  List<String> services =["14.png","9.png","16.png","14.png","9.png","16.png"];
   List<String> item =["Robin papa","Oscar Thomsen","Silvio Bompan","Robin papa",
     "Oscar Thomsen","Silvio Bompan"];


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Notifications',style: TextStyle(fontSize: 25,color: Color(0xff212325)),),
        backgroundColor: Color(0xffFFFFFF),
      ),
      body:
        Card(
          child:ListView.builder(

              itemCount: 6,
              itemBuilder: (BuildContext context, int index){
                return Card(
                  child: ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> Profilescreen ()));
                    },

                    leading:Image.asset(''
                        'assets/image/${services [index]}',
                    ),
                    title: Text(item[index],
                      // 'Fumiture assembly',
                      style: TextStyle(fontSize: 20,color:Color(0xff212325) ),

                    ),
                    subtitle: Text('Robin papa has acceepted your referral. you can\n'
                        'check the work progress in your referrrals'),

                  ),

                );

              }
          ),
        ),


    );
  }
}
