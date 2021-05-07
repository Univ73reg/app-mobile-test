import 'package:flutter/material.dart';

import 'package:product_test/config/custom_appbar.dart';
import 'package:product_test/product/products.dart';
import 'package:product_test/product/product_item.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget();

  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    //double itemHeight = (size.height - 24) / 2;
    //double itemWidth = size.width / 2;

    return Scaffold(
      appBar: CustomAppBar(
        height: 150,
      ),
      /*AppBar(
        backgroundColor: Color(0xFFF9F9F9),
        title: Container(
          padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
          child: Align(
            child:
                Text('Каталог', style: Theme.of(context).textTheme.headline6),
            alignment: Alignment.center,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () => null,
            color: Color(0xFF222222),
          ),
        ],
        /*flexibleSpace: Align(
          child: Text('appBar text bottom'),
          alignment: Alignment.bottomCenter,
        ),*/
      ),*/
      body:
          //Text('123123123'),
          GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: (173 / 300)),
        children: Products.products
            .map(
              (product) => ProductItem(productid: product.id),
            )
            .toList(),
      ),
    );
  }
}
