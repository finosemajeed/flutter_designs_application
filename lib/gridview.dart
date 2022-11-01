import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 29,
          crossAxisSpacing: 20,
        ),
        itemBuilder: ((context, index) =>
            Image.asset('assets/movie/movie1.jfif')),
      ),
    );
  }
}
