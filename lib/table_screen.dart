import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          const Center(
              child: Text(
            'Vegetables',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          DataTable(
            columns: const [
              DataColumn(
                  label: Text('ID',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Name',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Quantity (Kg)',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Tommato')),
                DataCell(Text('2')),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Carrot')),
                DataCell(Text('1')),
              ]),
              DataRow(cells: [
                DataCell(Text('3')),
                DataCell(Text('Onion')),
                DataCell(Text('1')),
              ]),
              DataRow(cells: [
                DataCell(Text('4')),
                DataCell(Text('Radish')),
                DataCell(Text('3')),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
