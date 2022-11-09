import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class StaggeredGridScreen extends StatelessWidget {
  StaggeredGridScreen({super.key});

  final List<_Backgroundtile> _backgroundTile = <_Backgroundtile>[
    const _Backgroundtile(backgroundColor: Colors.red, iconData: Icons.home),
    const _Backgroundtile(
        backgroundColor: Colors.yellow, iconData: Icons.search),
    const _Backgroundtile(
        backgroundColor: Colors.black,
        iconData: Icons.file_download_done_rounded),
    const _Backgroundtile(
        backgroundColor: Colors.green, iconData: Icons.back_hand),
    const _Backgroundtile(
        backgroundColor: Colors.orange, iconData: Icons.navigate_before),
    const _Backgroundtile(backgroundColor: Colors.pink, iconData: Icons.tty),
    const _Backgroundtile(
        backgroundColor: Colors.indigo, iconData: Icons.qr_code),
    const _Backgroundtile(
        backgroundColor: Colors.teal, iconData: Icons.offline_bolt),
    const _Backgroundtile(
        backgroundColor: Colors.lightBlue, iconData: Icons.padding_sharp),
    const _Backgroundtile(
        backgroundColor: Colors.deepOrange, iconData: Icons.mail_lock_outlined),
    const _Backgroundtile(
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

class _Backgroundtile extends StatelessWidget {
  final IconData iconData;
  final Color backgroundColor;

  const _Backgroundtile(
      {required this.backgroundColor, required this.iconData});

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
