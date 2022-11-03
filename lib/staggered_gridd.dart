import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class StaggeredGridScreen extends StatelessWidget {
  StaggeredGridScreen({super.key});

  final List<Backgroundtile> _backgroundTile = <Backgroundtile>[
    Backgroundtile(backgroundColor: Colors.red, iconData: Icons.home),
    Backgroundtile(backgroundColor: Colors.yellow, iconData: Icons.search),
    Backgroundtile(
        backgroundColor: Colors.black,
        iconData: Icons.file_download_done_rounded),
    Backgroundtile(backgroundColor: Colors.green, iconData: Icons.back_hand),
    Backgroundtile(
        backgroundColor: Colors.orange, iconData: Icons.navigate_before),
    Backgroundtile(backgroundColor: Colors.pink, iconData: Icons.tty),
    Backgroundtile(backgroundColor: Colors.indigo, iconData: Icons.qr_code),
    Backgroundtile(backgroundColor: Colors.teal, iconData: Icons.offline_bolt),
    Backgroundtile(
        backgroundColor: Colors.lightBlue, iconData: Icons.padding_sharp),
    Backgroundtile(
        backgroundColor: Colors.deepOrange, iconData: Icons.mail_lock_outlined),
    Backgroundtile(
        backgroundColor: Colors.cyan,
        iconData: Icons.chrome_reader_mode_outlined),
  ];

  final List<StaggeredTile> _cardTile = const <StaggeredTile>[
    StaggeredTile.count(1, 4),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(1, 2),
    StaggeredTile.count(2, 4),
    StaggeredTile.count(1, 4),
    StaggeredTile.count(1, 3),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 4),
    StaggeredTile.count(1, 3),
    StaggeredTile.count(1, 4),
    StaggeredTile.count(2, 4),
    StaggeredTile.count(1, 2),
    StaggeredTile.count(1, 3),
    StaggeredTile.count(2, 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StaggeredGridView.count(
        crossAxisCount: 3,
        staggeredTiles: _cardTile,
        children: _backgroundTile,
      ),
    );
  }
}

class Backgroundtile extends StatelessWidget {
  final IconData iconData;
  final Color backgroundColor;

  Backgroundtile(
      {super.key, required this.backgroundColor, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
