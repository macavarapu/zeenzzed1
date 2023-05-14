import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AppButton extends StatelessWidget {
  const AppButton(
  {super.key, required this.text,
  required this.onPressed,
  this.color,this.width, this.myEdgeInsets,this. borderRadius ,this.primaryColor});
  final String text;
  final Color? color;
  final double? width;
  final void Function()? onPressed;
  final EdgeInsets? myEdgeInsets;
  final  BorderRadius?  borderRadius;
  final dynamic? primaryColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:onPressed,style: ElevatedButton.styleFrom(
        padding: myEdgeInsets ?? EdgeInsets.symmetric(horizontal: 80,vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius:borderRadius?? BorderRadius.circular(50),
        ), primary:primaryColor?? Colors.black),
        child:Text(text,style:TextStyle( fontSize: 20 ,color:color?? Colors.white) ,)
    );
  }
}
