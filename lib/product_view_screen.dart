import 'package:first_flutter_project/dummy_data.dart';
import 'package:flutter/material.dart';

class ProductViewScreen extends StatelessWidget {
  const ProductViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    final product = dummyProducts.firstWhere(
      (element) => element['id'] == productId,
    );
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(children: [
          Text('Name : ${product['name']}'),
          Text('Price : ${product['price']}'),
          Text('Description : ${product['description']}'),
          Image.asset('assets')
        ]),
      ),
    );
  }
}
