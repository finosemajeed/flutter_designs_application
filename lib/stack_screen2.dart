import 'package:flutter/material.dart';

class StackScreen1 extends StatelessWidget {
  const StackScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.asset('assets/movie/movie4.jfif'),
          ),
          Positioned(
              right: 115,
              bottom: 20,
              child: Container(
                height: 30,
                width: 60,
                color: Colors.black87,
                child: Text(
                  textAlign: TextAlign.center,
                  'Joker',
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
