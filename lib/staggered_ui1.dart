import 'package:flutter/material.dart';

import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class StaggeredUiScreen1 extends StatelessWidget {
  StaggeredUiScreen1({super.key});

  final List<_Backgroundtile> _backgroundTile = <_Backgroundtile>[
    const _Backgroundtile(name: 'Kiwi', image: 'assets/fruits/fruit1.jfif'),
    const _Backgroundtile(
        name: 'Strwaberry', image: 'assets/fruits/fruit6.jfif'),
    const _Backgroundtile(
        name: "Strawberry", image: 'assets/fruits/fruit6.jfif'),
    const _Backgroundtile(name: "Straw", image: 'assets/fruits/fruit2.jfif'),
    const _Backgroundtile(name: 'Kiwi', image: 'assets/fruits/fruit5.jfif'),
    const _Backgroundtile(name: "Avocado", image: 'assets/fruits/fruit7.jfif'),
    const _Backgroundtile(name: "Apple", image: 'assets/fruits/fruit3.jfif'),
  ];
  final List<StaggeredTile> _cardTile = const <StaggeredTile>[
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 2),
    StaggeredTile.count(1, 2),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(),
      body: StaggeredGridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        staggeredTiles: _cardTile,
        children: _backgroundTile,
      ),
    );
  }
}

class _Backgroundtile extends StatelessWidget {
  final String image;
  final String name;

  const _Backgroundtile({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        child: Column(
          children: [
            SizedBox(
              child: Image.asset(
                image,
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'fruit',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
