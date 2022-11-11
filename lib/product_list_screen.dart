import 'package:first_flutter_project/dummy_data.dart';
import 'package:first_flutter_project/product_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: dummyProducts.map((product) {
            return TextButton(
                onPressed: () => _goToProductPage(context, product['id']),
                child: Text(product['name']));
          }).toList(),
        ),
      ),
    );
  }

  void _goToProductPage(BuildContext context, productId) {
    Navigator.of(context).pushNamed('productView', arguments: productId);
  }
}
