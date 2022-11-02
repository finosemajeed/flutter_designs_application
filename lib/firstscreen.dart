import 'package:first_flutter_project/contacts.dart';
import 'package:first_flutter_project/gridview.dart';
import 'package:first_flutter_project/gridview1.dart';
import 'package:first_flutter_project/gridview_custom_screen.dart';
import 'package:first_flutter_project/gridview_extent.dart';
import 'package:first_flutter_project/listview_builder_screen.dart';
import 'package:first_flutter_project/listview_seperated_screen.dart';
import 'package:first_flutter_project/stack_screen.dart';
import 'package:first_flutter_project/stack_screen2.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Center(
                  child: Text(
                'App Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              )),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ContactsScreen())));
              },
              title: const Text('Contacts'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ListViewBuilderScreen())));
              },
              title: const Text('ListView Builder'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const GridViewDemo())));
              },
              title: const Text('GridView Builder'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const GridViewExtentScreen())));
              },
              title: const Text('GridView Extent'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ListViewSeperated_Screen())));
              },
              title: const Text('ListView Seperated'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => GridViewScreen2())));
              },
              title: const Text('GridView Screen2'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Stack_Screen())));
              },
              title: const Text('Stack Screen'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => StackScreen1())));
              },
              title: const Text('Stack Screen1'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => GridViewCustomScreen())));
              },
              title: const Text('GridViewCustom Screen'),
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
