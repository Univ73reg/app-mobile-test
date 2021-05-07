import 'package:flutter/material.dart';

import 'package:product_test/product/products.dart';
import 'package:product_test/product/product_item.dart';

class ProductOnHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        /*gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: (173 / 300)),*/
        children: Products.products
            .map(
              (product) => ProductItem(productid: product.id),
            )
            .toList(),
      ),
    );
  }
}
