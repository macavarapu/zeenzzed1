import 'package:flutter/material.dart';

import '../handyman_screen/handyman_screen.dart';
class Searchservice extends StatelessWidget {
   Searchservice({Key? key}) : super(key: key);
  List<String> services = ["21.png","27.png","22.png","23.png","24.png","25.png","26.png","21.png","26.png","26.png","26.png","26.png"];
   List<String> item =["'Fumiture assembly","Handyman","Home cleaning","Hanging pictures&Shelves",
     "Office cleaning","Computter repair","Move help","Office chairs assembly","Outlet insstallation","light flixes","Electrical"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Search Service',style: TextStyle(fontSize: 30,color: Color(0xff212325)),),
        backgroundColor: Color(0xffFFFFFF),
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Computer repair",
                    hintText: "Search",
                    prefixIconColor: Color(0xff3C3C4399),
                    prefixIcon: Icon(Icons.search,color: Color(0xff3C3C4399),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),

            ),
            Container(
              height: 1000,


              child:ListView.builder(

                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      child: ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> HandymanScreen()));
                        },

                        leading:Image.asset(''
                            'assets/image/${services [index]}',
                            ),
                        title: Text(item[index],
                         // 'Fumiture assembly',
                          style: TextStyle(fontSize: 20,color:Color(0xff212325) ),),

                      ),

                    );

                  }
              ),
            )],

        ),
      ) ,
    );
  }
}











