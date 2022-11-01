import 'package:flutter/material.dart';



class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts,'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: const Text('Anna William'),
                subtitle: const Text("9879987987"),
                leading: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/persons/person1.jfif'),
                ),
                trailing: Wrap(
                  children: const [
                    Icon(
                      Icons.call,
                      color: Colors.green,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.message,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Samwell'),
                subtitle: const Text("9877886987"),
                leading: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/persons/person2.jfif'),
                ),
                trailing: Wrap(
                  children: const [
                    Icon(
                      Icons.call,
                      color: Colors.green,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.message,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('John'),
                subtitle: const Text("8978787787"),
                leading: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/persons/person3.jfif'),
                ),
                trailing: Wrap(
                  children: const [
                    Icon(
                      Icons.call,
                      color: Colors.green,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.message,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Tessa'),
                subtitle: const Text("7659987987"),
                leading: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/persons/person4.jfif'),
                ),
                trailing: Wrap(
                  children: const [
                    Icon(
                      Icons.call,
                      color: Colors.green,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.message,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Federick'),
                subtitle: const Text("9879987987"),
                leading: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/persons/person5.jfif'),
                ),
                trailing: Wrap(
                  children: const [
                    Icon(
                      Icons.call,
                      color: Colors.green,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.message,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
