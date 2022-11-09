import 'package:flutter/material.dart';

class ExpantionTileScreen extends StatelessWidget {
  const ExpantionTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ExpansionTile(
        title: Text('Colors'),
        children: [
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue),
            title: Text('Blue Color'),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.red),
            title: Text("Red Color"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green),
            title: Text("Green Color"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.yellow),
            title: Text('Yellow Color'),
          ),
        ],
      ),
    );
  }
}


// expantion panel list
