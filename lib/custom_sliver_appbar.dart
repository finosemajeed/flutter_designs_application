import 'package:flutter/material.dart';

class CustomSliverAppBarScreen extends StatelessWidget {
  const CustomSliverAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: false,
            title: const Text('Sliver Appbar'),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
            ],
            bottom: AppBar(
              automaticallyImplyLeading: false,
              title: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search for something',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 400,
                child: Center(
                  child: Text('This is an awesome shopping platform'),
                ),
              ),
              Container(
                height: 1000,
                color: Colors.deepOrange,
              )
            ]),
          )
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.safety_check), label: 'sefty'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ice_skating), label: 'skating'),
        ]),
      ),
    );
  }
}
