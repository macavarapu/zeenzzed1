import 'package:flutter/material.dart';

import '../../res/components/button_component/button_component.dart';
import '../../res/components/login_textfield.dart';
class Changepasswordscreen extends StatelessWidget {
   Changepasswordscreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  bool isAlredyUser = false;
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Change password',style: TextStyle(fontSize: 25,color: Color(0xff212325)),),
        backgroundColor: Color(0xffFFFFFF),
      ),

      body:
      Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
            key: _formKey,
            child:SingleChildScrollView(child:Column(
              children: [
                SizedBox(height: 100,),
                Text('Set a strong password and protect your \n account from other.',
                  style:TextStyle(fontSize:20,
                   color: Colors.black,
                   // color: Color(0xff00000000),
                  ) ,),
                SizedBox(height: 80,),

                TextFormField(

                  // obscureText: obscureText,
                  obscureText:true,
                  controller: password,
                  decoration: InputDecoration(
                    prefixIcon:Icon(Icons.lock,color: Color(0xff4E4E4E),),
                    suffixIcon: GestureDetector(
                      onTap: (){
                        /// obscureText=! obscureText;
                      },

                      child: Icon(Icons.visibility,color: Color(0xff4E4E4E),),
                    ),
                    hintText: 'password ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                  ),
                  keyboardType: TextInputType.text,

                ),
                SizedBox(height: 10,),

                //
                // LoginTextfield(
                //
                //   hintText: 'Re-enter password ',
                //   icon: Icons.email_outlined,
                //   color: Colors.black,
                // // sufixIcon: Icon(Icons.visibility,color: Colors.black,),
                //
                //
                //  // icon: Icons.visibility,
                //
                // //  color:Color(0xff4E4E4E),
                //
                //   keyboardType: TextInputType.emailAddress,
                //
                //   validator: (value){
                //     if(value!=null && value.isEmpty)
                //     {
                //       return 'Please re-enter password';
                //     }
                //     print(password.text);
                //     print(confirmpassword.text);
                //     if(password.text!=confirmpassword.text){
                //       return "Password does not match";
                //     }
                //     return null;
                //
                //   },
                //
                // ),
                TextFormField(
                  obscureText: false,
                  controller: confirmpassword,
                  decoration: InputDecoration(
                    prefixIcon:Icon(Icons.lock,color: Color(0xff4E4E4E),),
                    suffixIcon: GestureDetector(
                      onTap: (){},
                      child: Icon(Icons.visibility,color: Color(0xff4E4E4E),),
                    ),
                    hintText: 'Re-enter password ',
                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (value){
                    if(value!=null && value.isEmpty)
                    {
                      return 'Please re-enter password';
                    }
                    print(password.text);
                    print(confirmpassword.text);
                    if(password.text!=confirmpassword.text){
                      return "Password does not match";
                    }
                    return null;
                  },


                ),

                SizedBox(height: 40,),
                AppButton(text: 'Change password',
                  onPressed:(){
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );

                      }

                    }
                  },
                ),


              ],
            ),
            )),
      ),
    );

  }
}
