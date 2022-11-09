import 'package:flutter/material.dart';

class GridViewScreen1 extends StatelessWidget {
  const GridViewScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                SizedBox(
                  height: 300,
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/fruits/fruit4.jfif',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    "Lemon",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                SizedBox(
                  height: 300,
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/fruits/fruit1.jfif',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    "Kiwi",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                SizedBox(
                  height: 300,
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/fruits/fruit3.jfif',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    "Apple",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                SizedBox(
                  height: 300,
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/fruits/fruit6.jfif',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    "Straberry",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                SizedBox(
                  height: 300,
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/fruits/fruit7.jfif',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    "Avocado",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
