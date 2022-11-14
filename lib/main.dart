import 'dart:async';

import 'package:first_flutter_project/firstscreen.dart';
import 'package:first_flutter_project/product_list_screen.dart';
import 'package:first_flutter_project/product_view_page.dart';
import 'package:first_flutter_project/product_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_project/startup_screen.dart';

void main() {
  runApp(MaterialApp(
    home: FirstScreen(),
    // home: Splash(),
    debugShowCheckedModeBanner: false,
    routes: {
      'productView': (context) => ProductViewScreen(),
      'productViewPage': (context) => ProductviewPage(),
    },
  ));
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => StartUpScreen())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Image.asset(
        'assets/images/typography.png',
        width: 200,
        height: 200,
      )),
    );
  }
}
