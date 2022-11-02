import 'package:flutter/material.dart';

class GridView_Count_Screen extends StatelessWidget {
  const GridView_Count_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        shrinkWrap: true,
        children: List.generate(20, (index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
