import 'package:flutter/material.dart';
import 'package:first_flutter_project/db.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('movies'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
                title: Text(movies.entries.elementAt(index).key),
                subtitle: Text(movieGeners.entries.elementAt(index).value),
                leading: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(movies.entries
                      .elementAt(index)
                      .value
                      .entries
                      .elementAt(0)
                      .value),
                ),
                trailing: Text(movies.entries
                    .elementAt(index)
                    .value
                    .entries
                    .elementAt(0)
                    .key)),
          ),
        ),
      ),
    );
  }
}
