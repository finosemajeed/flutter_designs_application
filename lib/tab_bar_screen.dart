import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("MyTab"),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
          ]),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text('Settings')),
                const PopupMenuItem(child: Text('Help')),
                const PopupMenuItem(child: Text('About')),
                const PopupMenuItem(child: Text('Vertion')),
              ];
            })
          ],
        ),
        body: const TabBarView(children: [
          Center(
            child: Icon(Icons.home),
          ),
          Center(
            child: Icon(Icons.person),
          ),
          Center(
            child: Icon(Icons.settings),
          )
        ]),
      ),
    );
  }
}
