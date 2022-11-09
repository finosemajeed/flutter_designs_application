import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class ListViewSeperated_Screen extends StatelessWidget {
  ListViewSeperated_Screen({super.key});

  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView seperated"),
      ),
      body: ListView.separated(
        itemBuilder: ((context, index) => SizedBox(
              height: 50,
              child: Card(
                child: Text(
                  months[index],
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            )),
        separatorBuilder: (context, index) {
          if (index % 4 == 0) {
            return const SizedBox(
              height: 50,
              child: Card(
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Advertisement',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          }
          return const Divider(
            height: 0,
          );
        },
        itemCount: months.length,
      ),
    );
  }
}
