import 'package:flutter/material.dart';

class ProfileUiScreen extends StatelessWidget {
  const ProfileUiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: SizedBox(
        height: 400,
        child: Stack(children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/fruits/background.jfif',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 120,
            left: 75,
            child: Row(
              children: [
                CircleAvatar(
                    radius: 25,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.add))),
                const SizedBox(width: 30),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/fruits/person.jfif'),
                ),
                const SizedBox(width: 30),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 25,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 230,
            left: 140,
            child: Text(
              'Mark Rufello',
              style: TextStyle(fontSize: 24),
            ),
          ),
          const Positioned(
            top: 260,
            left: 145,
            child: Text(
              'Developer/flutter',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ),
        ]),
      ),
    );
  }
}
