import 'package:first_flutter_project/contacts.dart';
import 'package:first_flutter_project/gridview.dart';
import 'package:first_flutter_project/gridview_extent.dart';
import 'package:first_flutter_project/listview_builder_screen.dart';
import 'package:first_flutter_project/listview_seperated_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ContactsScreen())));
              },
              child: const Text('Contacts'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ListViewBuilderScreen())));
              },
              child: const Text('ListView Builder'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const GridViewDemo())));
              },
              child: const Text('GridView Builder'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const GridViewExtentScreen())));
              },
              child: const Text('GridView Extent'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ListViewSeperated_Screen())));
              },
              child: const Text('ListView Seperated'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.accents[index],
                    child: SizedBox(
                      height: 60,
                      width: 150,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.home_work),
                            Text('Home work'),
                          ]),
                    ),
                  ),
                  Card(
                      elevation: 5,
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      // BeveledRectangleBorder(
                      //     borderRadius: BorderRadius.circular(40)),
                      // RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(15)),
                      color: Colors.accents[index],
                      child: SizedBox(
                        height: 60,
                        width: 150,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.home_work),
                              Text('Home work'),
                            ]),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
