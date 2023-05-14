import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginTextfield extends StatelessWidget {
  final IconData? icon;
  final String? hintText;
  final Widget? prfixIcon;
  final Widget? sufixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
   LoginTextfield({Key? key, this.icon,
     this.hintText,this.prfixIcon,
     this.controller,
     this.keyboardType,this.validator, required Color color, this.sufixIcon,  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      TextFormField(
      obscureText: false,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon:prfixIcon,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      keyboardType:keyboardType,
        validator: validator,
      ),
      ],
    );
  }
}
