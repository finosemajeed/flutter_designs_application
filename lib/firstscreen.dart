import 'package:first_flutter_project/alert_dialogbox_screen.dart';
import 'package:first_flutter_project/align_widget_screen.dart';
import 'package:first_flutter_project/animation_screen.dart';
import 'package:first_flutter_project/bottom_sheet_screen.dart';
import 'package:first_flutter_project/carousal_slider_screen.dart';
import 'package:first_flutter_project/check_box_screen.dart';
import 'package:first_flutter_project/contacts.dart';
import 'package:first_flutter_project/custom_sliver_appbar.dart';
import 'package:first_flutter_project/expantion_panel_list_screen.dart';
import 'package:first_flutter_project/expantion_tile_screen.dart';
import 'package:first_flutter_project/gridview.dart';
import 'package:first_flutter_project/gridview1.dart';
import 'package:first_flutter_project/gridview_custom_screen.dart';
import 'package:first_flutter_project/gridview_extent.dart';
import 'package:first_flutter_project/gridview_screen1.dart';
import 'package:first_flutter_project/list_checkbox.dart';
import 'package:first_flutter_project/listview_builder_screen.dart';
import 'package:first_flutter_project/listview_seperated_screen.dart';
import 'package:first_flutter_project/lottie_animation.dart';
import 'package:first_flutter_project/product_list_screen.dart';
import 'package:first_flutter_project/product_page.dart';
import 'package:first_flutter_project/profile_ui_screen.dart';
import 'package:first_flutter_project/stack_screen.dart';
import 'package:first_flutter_project/stack_screen2.dart';
import 'package:first_flutter_project/staggered_gridd.dart';
import 'package:first_flutter_project/staggered_ui1.dart';
import 'package:first_flutter_project/tab_bar_screen.dart';
import 'package:first_flutter_project/table_screen.dart';
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
            // const DrawerHeader(
            //   decoration: BoxDecoration(color: Colors.green),
            //   child: Center(
            //       child: Text(
            //     'App Drawer',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 25,
            //     ),
            //   )),
            // ),

            const UserAccountsDrawerHeader(
              accountName: Text('User'),
              accountEmail: Text("user123@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/persons/person7.jfif')),
            ),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ContactsScreen())));
              },
              title: const Text('Contacts'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ListViewBuilderScreen())));
              },
              title: const Text('ListView Builder'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const GridViewDemo())));
              },
              title: const Text('GridView Builder'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const GridViewExtentScreen())));
              },
              title: const Text('GridView Extent'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ListViewSeperated_Screen())));
              },
              title: const Text('ListView Seperated'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const GridViewScreen2())));
              },
              title: const Text('GridView Screen2'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const Stack_Screen())));
              },
              title: const Text('Stack Screen'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const StackScreen1())));
              },
              title: const Text('Stack Screen1'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const GridViewCustomScreen())));
              },
              title: const Text('GridViewCustom Screen'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => StaggeredGridScreen())));
              },
              title: const Text('StaggeredGrid Screen'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const TableScreen())));
              },
              title: const Text('Table Screen'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const TabBarScreen())));
              },
              title: const Text('TabBar Screen'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            const CustomSliverAppBarScreen())));
              },
              title: const Text('Custom Sliver AppBar Screen'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const GridViewScreen1())));
              },
              title: const Text('GridView Screen1'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => StaggeredUiScreen1())));
              },
              title: const Text('StaggeredUi Screen1'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ProfileUiScreen())));
              },
              title: const Text('ProfileUi Screen1'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const CheckBoxScreen())));
              },
              title: const Text('CheckBox Screen1'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const LottieAnimation())));
              },
              title: const Text('Lottie Animation Screen1'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ExpantionTileScreen())));
              },
              title: const Text('Expantion tile Screen1'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            const ExpantionPanelListScreen())));
              },
              title: const Text('Expantion Panel List Screen1'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const AlerDialogueBoxScreen())));
              },
              title: const Text('Show alert box Screen1'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const AlignWidgetScreen())));
              },
              title: const Text('Show alert box while exititing app Screen1'),
            ),
            const Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const CarousalSliderScreen())));
              },
              title: const Text('Carousal slider Screen'),
            ),
            Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const BottomSheetScreen())));
              },
              title: const Text('BottomSheet Screen'),
            ),
            Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const AnimationScreen())));
              },
              title: const Text('Animation Screen'),
            ),

            Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ListCheckBox())));
              },
              title: const Text('Listcheckbox Screen'),
            ),
            Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ProductListScreen())));
              },
              title: const Text('Productlist Screen'),
            ),
            Divider(),
            ListTile(
              dense: true,
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => ProductPage())));
              },
              title: const Text('ProductPage Screen'),
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
