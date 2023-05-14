import 'package:flutter/material.dart';

import '../../res/components/button_component/button_component.dart';
import '../../res/components/login_textfield.dart';
import '../../utils/regx.dart';
import '../login_screen/login_screen.dart';
import '../verify_screen/verify_screen.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: false,
        elevation: 0.1,
        backgroundColor: Color(0xff212325),
        title: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
              text: "REGISTER WITH",
              style: TextStyle(fontSize: 20,color: Color(0xffFFFFFF)),
              children: <TextSpan>[
                TextSpan(
                  text: '\nZENZZED',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ]
          ),
        ),


        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),

      ),

      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  // symmetric(horizontal: 1,vertical: 1),

                  child: Column(
                    children: [
                      Text(
                        'Hello, Iguess you are new to ZENZZED.'
                            'You can start using the application after sign up..',
                        style: TextStyle(fontSize: 15,color: Color(0xff4E4E4E)),
                      ),
                      SizedBox(
                        height: 60,
                      ),
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
                      SizedBox(height: 10,),
                      LoginTextfield(
                        hintText: 'last name ',
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
                      SizedBox(height: 10,),
                      LoginTextfield(
                        hintText: 'phone number ',
                        icon: Icons.phone_android,
                        color: Colors.black,
                        keyboardType: TextInputType.phone,
                       validator: (value) {
                       if (value!.length !=10) {
                       return 'Mobile Number must be of 10 digit';
                       // return 'Please enter a valid phone number';
                        }
                         return null;
                          },
                      ),
                      SizedBox(height: 10,),
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
                      SizedBox(
                        height: 30,
                      ),
                      AppButton(text: 'Continue',
                        onPressed:(){
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                         if (_formKey.currentState!.validate()) {
                         ScaffoldMessenger.of(context).showSnackBar(
                             const SnackBar(content: Text('Processing Data')),
                                    );

                           // if(_formKey.currentState!.validate()) {
                              // isAlredyUser = true;
                                   Navigator.of(context).push(
                                 MaterialPageRoute(
                                 builder: (context) =>   VerifyScreen()),
                                //(Route<dynamic> route) => false
                                     );
                                     }

                                    }
                                     },
                                 ),

                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>  LoginPage()),
                            //(Route<dynamic> route) => false
                          );
                        },
                        child: RichText(
                            text: TextSpan(
                              text: "Already have an account?",
                              style: TextStyle(
                                color: Color(0xff4E4E4E),
                              ),
                              children: [

                                TextSpan(
                                  text: "  Sign  In",
                                  style: TextStyle(
                                      fontSize: 20, color: Color(0xff212325)),
                                ),
                              ],
                            )),
                      ),

                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
