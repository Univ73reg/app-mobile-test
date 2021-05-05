import 'package:flutter/material.dart';

//import 'package:product_test/config/route.dart';
import 'package:product_test/product/products.dart';
import 'package:product_test/product/product_item.dart';

/*class ProductListWidget extends StatelessWidget {
  const ProductListWidget();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _ProductListWidget(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}*/

class ProductListWidget extends StatelessWidget {
  const ProductListWidget();

  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    //double itemHeight = (size.height - 24) / 2;
    //double itemWidth = size.width / 2;

    return /*Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body:*/
        Center(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: (173 / 300)),
        children: Products.products
            .map(
              (product) => ProductItem(productid: product.id),
            )
            .toList(),
      ),
    );
    /*bottomNavigationBar: Nav(),
    );*/
  }
}
