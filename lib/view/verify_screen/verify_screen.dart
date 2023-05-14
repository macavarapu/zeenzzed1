import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:zenzzed1/local_storage/local_storage.dart';

import '../../res/components/button_component/button_component.dart';
import '../home_screen/home_screen.dart';
class VerifyScreen extends StatelessWidget {
  VerifyScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  bool _pinSuccess = false;

  @override
  Widget build(BuildContext context) {

    // var underline;
    var underline;

   // var FieldStyle;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('OTP Verification'),
        toolbarHeight: 50,
        // Set this height
        flexibleSpace: Container(

          padding: EdgeInsets.only(top: 55, bottom: 10, left: 10),

          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            ],
          ),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            SizedBox(height: 30,),
            Text(
                'We have sent an One-_Time passcode to your registered e-mail address'),
            SizedBox(height: 10,),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  OTPTextField(
                    length: 6,
                    width: 300,
                    fieldWidth: 40,
                    style: TextStyle(
                        fontSize: 30
                    ),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                   // fieldStyle: FieldStyle.underline,
                    //fieldStyle: FieldStyle.underline,
                    // onCompleted: (pin) {
                    //   print("Completed: " + pin);
                    // },
                    // onCompleted: (pin) {
                    //   setState(() {
                    //
                    //   });
                    // },
                  ),
                  SizedBox(height: 50.0),
                  RichText(text: TextSpan(
                    text: "Don't recive code?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    children: [

                      TextSpan(
                        text: "  Resend",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  )),

                  SizedBox(height: 40.0),
                  AppButton(text: 'Verify pin',
                    onPressed:() async{
                          // if(_formKey.currentState!.validate()) {
                         await LocalStorage.setAuth(true);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>  HomeScreen  ()),
                            
                          );
                        }

                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
















