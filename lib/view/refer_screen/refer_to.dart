import 'package:flutter/material.dart';

import '../../repository/ReferModel.dart';
import '../models/ReferModel.dart';
class ReferTo extends StatelessWidget {
  //const ReferTo({Key? key}) : super(key: key);
  // Creating a list of arrays
  List<List<String>> listOfArrays = [];

  // get numberTruthList => null;


  /// ReferTo({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    List<Reparescreen> refer = [];

    for (int i = 0; i <15; i++) {
      Reparescreen newPerson = new Reparescreen( image: "kkkk", text: "",textbutton: "");
      refer.add(newPerson);

    }

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Refer to',style: TextStyle(fontSize: 25,color: Color(0xff212325)),),
        backgroundColor: Color(0xffFFFFFF),
      ),

      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {

                },

                // controller: editingController,
                decoration: InputDecoration(
                    labelText: "Computer repair",

                    hintText: "Search",
                    prefixIconColor: Color(0xff3C3C4399),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),

            ),
            Container(
              height: 1000,


              child:ListView.builder(

                  itemCount: refer.length,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      child: ListTile(

                        leading:Image.asset('assets/image/16.png',),
                        title: Text('Robin papa',
                          style: TextStyle(fontSize: 20,color:Color(0xff212325) ),),

                        subtitle:

                        Text('Computer repair',
                          style: TextStyle(fontSize:15,color: Color(0xff212325) ),),

                        trailing:TextButton(
                          onPressed: (){},
                          child:  Text('Refer',style: TextStyle(color: Color(0xff212325)),),
                        ),
                      ),

                    );

                  }
              ),
            )],
        ),
      ),

    );
  }
}
