import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen2 extends StatelessWidget {
  const ProfileScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: ListView(children: [
        Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/fruits/person.jfif'),
              radius: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 25),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/other/facebooklogo.png'),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/other/gmaillog.png'),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/other/twitterlogo.jfif'),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/other/linkedinlogo.jfif'),
                ),
                SizedBox(width: 25),
              ],
            ),
            Text(
              'Name',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Text('userId'),
            Text('Mobile App Developer and Open source Enthusiastic'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                child: ListView(
                  children: [
                    TileList(title: 'Privacy', icon: Icons.privacy_tip),
                    TileList(title: 'Purchase History', icon: Icons.restore),
                    TileList(
                        title: 'Help & Support',
                        icon: Icons.help_outline_rounded),
                    TileList(title: 'Settings', icon: Icons.settings),
                    TileList(
                        title: 'Invite a Friend', icon: Icons.person_add_alt),
                    TileList(title: 'Logout', icon: Icons.logout_rounded)
                  ],
                  physics: BouncingScrollPhysics(),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}

class TileList extends StatelessWidget {
  const TileList({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        tileColor: Colors.grey[300],
        leading: Icon(icon, color: Colors.black),
        title: Text(title),
        trailing: Icon(
          Icons.navigate_next,
          color: Colors.black,
        ),
      ),
    );
  }
}
