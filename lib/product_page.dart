import 'package:first_flutter_project/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: dummyProducts.map((product) {
            return GestureDetector(
              onTap: () => onItemClick(context, product['id']),
              child: Card(
                child: Column(children: [
                  SizedBox(
                    height: 150,
                    child: Image.asset(
                      product['image'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(product['name']),
                  Text('Rs ${product['price'].toString()}'),
                ]),
              ),
            );
          }).toList(),
        )
        // GridView.builder(
        //     itemCount: dummyProducts.length,
        //     gridDelegate:
        //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //     itemBuilder: ((context, index) {
        //       return GestureDetector(
        //         child: Card(
        //           child: Column(children: [
        //             SizedBox(
        //               child: Image.asset(
        //                   dummyProducts[index].entries.elementAt(4).value),
        //             ),
        //             Text('Fruits'),
        //             Text('Rs 89'),
        //           ]),
        //         ),
        //       );
        //     })),
        );
  }

  void onItemClick(BuildContext context, productId) {
    Navigator.of(context).pushNamed('productViewPage', arguments: productId);
  }
}
