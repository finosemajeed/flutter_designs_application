import 'package:first_flutter_project/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductviewPage extends StatelessWidget {
  const ProductviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    final product = dummyProducts.firstWhere(
      (element) => element['id'] == productId,
    );

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            child: Image.asset(product['image']),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                product['name'],
                style: TextStyle(fontSize: 24),
              ),
              Text(
                'Rs ${product['price'].toString()}',
                style: TextStyle(fontSize: 24),
              )
            ],
          ),
          SizedBox(height: 20),
          Text('Descripton'),
          SizedBox(height: 20),
          Text(
            product['description'],
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
