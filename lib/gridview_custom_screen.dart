import 'package:flutter/material.dart';

class GridViewCustomScreen extends StatelessWidget {
  const GridViewCustomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.custom(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        childrenDelegate: SliverChildBuilderDelegate(((context, index) {
          return Card(
            child: Image.asset('assets/movie/movie3.jfif'),
          );
        }), childCount: 17),
      ),
    );
  }
}
