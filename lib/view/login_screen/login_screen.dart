import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zenzzed1/local_storage/local_storage.dart';
import 'package:zenzzed1/res/components/button_component/button_component.dart';
import 'package:zenzzed1/res/components/login_textfield.dart';

import '../../res/conants/routes_constants.dart';
import '../sign_up_screen/sign_up_screen.dart';
import '../verify_screen/verify_screen.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  bool isAlredyUser = false;

  bool isEmailValid(String email) {
    bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email);
    return emailValid;
  }
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.black,
          title: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
                text: "SIGN IN TO",
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

        ),
        body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
              key: _formKey,
              child:SingleChildScrollView(child:Column(
                children: [
                  SizedBox(height: 100,),
                  Text('We are happy to see you agin .You can continue where you left off by signing in.',
                    style:TextStyle(color: Color(0xff4E4E4E)) ,),
                  SizedBox(height: 60,),

                  LoginTextfield(
                    controller: _textController,
                    hintText: 'Enter email ',
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
                  // LoginTextfield(
                  //   hintText: 'phone number ',
                  //   icon: Icons.phone_android,
                  //   keyboardType: TextInputType.phone,
                  //   validator: (value) {
                  //     if (value!.length !=10) {
                  //       return 'Mobile Number must be of 10 digit';
                  //       // return 'Please enter a valid phone number';
                  //     }
                  //     return null;
                  //   },
                  // ),
                  //


                  SizedBox(height: 30,),
                  AppButton(text: 'Continue',
                      onPressed:() async{
                if (_formKey.currentState!.validate()) {
                // await LocalStorage.setEmail(_textController.text);
                // context.pushReplacement(RoutesList.homeScreen) :
                  Navigator.of(context).push
              (MaterialPageRoute(builder: (context)=> VerifyScreen()),
                    );
                    print( 'print email value ${LocalStorage.getEmail()}');
                 }
                    },
                  ),


                  SizedBox(height:100 ,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()),
                        //(Route<dynamic> route) => false
                     );
                    },
                    child:  RichText(text: TextSpan(
                        text: "if you don't have  an account?",
                        style: TextStyle(
                          color: Color(0xff4E4E4E),
                        ),
                        children: [

                          TextSpan(
                              text: "   Sign up",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff212325),
                                //fontWeight: FontWeight.bold
                              )
                          )
                        ]
                    )),
                  ),
                ],
              ),
              )),
        ));
  }
}

