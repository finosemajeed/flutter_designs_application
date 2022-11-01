import 'package:flutter/material.dart';

class GridViewExtentScreen extends StatelessWidget {
  const GridViewExtentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Extent'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 90,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.purple,
          ),
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.white,
          ),
          Container(
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
