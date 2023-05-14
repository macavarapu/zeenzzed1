import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zenzzed1/local_storage/local_storage.dart';
import 'package:zenzzed1/res/styles/app_color.dart';
import '../../res/conants/routes_constants.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key}) : super(key: key);
  @override
  _FlashScreenState createState() => _FlashScreenState();
}
class _FlashScreenState extends State<FlashScreen> {
 // bool _isVisible = false;
  
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration( seconds: 8),
            ()
        async
        {
    //await  LocalStorage.getAuth() == true ?
     // context.pushReplacement(RoutesList.homeScreen) :
      context.go(RoutesList.loginpage);
    }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    "assets/image/111.png",
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "@ZENZZED all rights reserved",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
      ),
    );
  }
}

