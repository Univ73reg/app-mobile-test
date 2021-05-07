import 'package:flutter/material.dart';

import 'package:product_test/model/product.dart';
import 'package:product_test/product/products.dart';

// ignore: must_be_immutable
class ProductDetails extends StatelessWidget {
  int _productid;

  ProductDetails({int id}) : _productid = id;

  Product findProduct(int id) =>
      Products.products.toList().firstWhere((product) => product.id == id);

  @override
  Widget build(BuildContext context) {
    Product product = findProduct(_productid);

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Image.asset(
                      product.picture,
                      fit: BoxFit.cover,
                      width: 173,
                      height: 229,
                    ),
                  ],
                ),
              ),
              /*ListTile(
                    subtitle: Text(product.briefDescription),
                    title: Text(product.name),
                  ),*/
              Container(
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Column(children: [
                        Text(product.briefDescription,
                            style: TextStyle(fontSize: 12)),
                        Text(product.name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Color: ' + product.color,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300)),
                            Text('Size: ' + product.size,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300)),
                          ],
                        ),
                        Text(
                            'Price: ' +
                                product.price.toString() +
                                ' ' +
                                product.currency,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300)),
                        /*Center(
                              child: ElevatedButton(
                                child: Text('Подробнее'),
                                onPressed: () {
                                  Navigator.pushNamed(context,
                                      '/product/' + product.id.toString());
                                },
                              ),
                            ),*/
                      ]),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
