import 'package:flutter/material.dart';
import 'package:zenzzed1/res/conants/go_routes.dart';
import 'package:zenzzed1/view/flash_screen/flash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routerConfig: routes ,///LoginPage (),
    );
  }
}
