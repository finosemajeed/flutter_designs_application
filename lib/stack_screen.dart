import 'package:flutter/material.dart';

// ignore: camel_case_types
class Stack_Screen extends StatelessWidget {
  const Stack_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Container(
          height: 500,
          width: 500,
          color: Colors.red,
        ),
        Positioned(
          right: 30,
          top: 30,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
        ),
        Positioned(
          bottom: 30,
          left: 30,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        ),
      ]),
    );
  }
}
