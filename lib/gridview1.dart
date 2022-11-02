import 'package:flutter/material.dart';

class GridViewScreen2 extends StatelessWidget {
  const GridViewScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 35 / 50,
        ),
        children: [
          SizedBox(
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    'assets/movie/movie3.jfif',
                    fit: BoxFit.cover,
                  ),
                  const Text('data')
                ],
              ),
            ),
          ),
          SizedBox(
            child: Card(
              child: Column(
                children: [
                  Image.asset('assets/movie/movie3.jfif'),
                  const Text('data')
                ],
              ),
            ),
          ),
          SizedBox(
            child: Card(
              child: Column(
                children: [
                  Image.asset('assets/movie/movie3.jfif'),
                  const Text('data')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
