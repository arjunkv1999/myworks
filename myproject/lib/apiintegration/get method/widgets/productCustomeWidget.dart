
import 'package:flutter/material.dart';

class ProductCustom extends StatelessWidget {
  final ProductModel productList;
  const ProductCustom(this.productList);
}

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoreation:
              
            )
          ]
        )
      )
    );
  }