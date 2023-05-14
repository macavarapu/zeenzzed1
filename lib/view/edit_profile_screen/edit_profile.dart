import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../res/components/button_component/button_component.dart';
import '../../res/components/login_textfield.dart';
import '../../res/conants/routes_constants.dart';
import '../../utils/regx.dart';
import '../login_screen/login_screen.dart';
import '../verify_screen/verify_screen.dart';
class Editprofilescreen extends StatelessWidget {
  Editprofilescreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        centerTitle:true ,
        elevation: 0,

        title: Text('Edit profile',style: TextStyle(fontSize: 20,color: Colors.black),),
        backgroundColor: Color(0xffFFFFFF),

      ),

      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.only(left: 15,bottom: 20,right: 15),
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                SizedBox(height: 30,),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(width: 4,color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Color(0xffD1D1D1),
                              // color: Colors.black.withOpacity(0.1),
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/image/16.png'),
                          ),
                        ),

                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 4,color: Colors.white),
                            color: Colors.white,
                          ),


                          child: Icon(Icons.edit),

                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 40,),
                LoginTextfield(
                  hintText: 'Enter name ',
                  icon: Icons.person,
                  color: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                      //allow upper and lower case alphabets and space
                      return "Enter Correct Name";
                    }else{
                      return null;
                    }
                  },

                ),

                SizedBox(
                  height: 10,
                ),
                LoginTextfield(
                  hintText: 'Email address  ',
                  icon: Icons.email_outlined,
                  color: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  validator: (email) {
                    if ( isEmailValid(email??"")) return null;
                    else
                      return 'Enter a valid email address';
                  },
                ),
                SizedBox(height: 10,),
                  LoginTextfield(
                    hintText: 'phone number ',
                    icon: Icons.phone_android,
                    color: Colors.black,
                    keyboardType: TextInputType.phone,

                    validator: (value) {
                     // LengthLimitingTextInputFormatter(10);
                      if (value!.length !=10) {
                        return 'Mobile Number must be of 10 digit';
                        // return 'Please enter a valid phone number';
                      }
                      return null;
                    },
                  ),

                SizedBox(height: 30,),
                AppButton(text: 'Update',
                  onPressed:(){
          if (_formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Processing Data')
            ),
          );

               Navigator.of(context).push(
                 MaterialPageRoute(
                     builder: (context) =>   VerifyScreen()),
                 //(Route<dynamic> route) => false
               );

                        }
                }
                         ),

              ],
            ),

          ),

        ),
      ),

    );
  }
}
