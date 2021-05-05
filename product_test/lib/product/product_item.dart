import 'package:flutter/material.dart';
//import 'package:product_test/config/route.dart';
import 'package:product_test/model/product.dart';
import 'package:product_test/product/products.dart';
//import 'package:product_test/product/product_details.dart';

/*
class ProductItem extends StatelessWidget {
  int _productid;
  ProductItem({int productid}) : _productid = productid;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _ProductItem(productid: _productid),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
*/
class ProductItem extends StatelessWidget {
  int _productid;
  List<Product> _products = Products.products.toList();
  ProductItem({int productid}) : _productid = productid;

  Product findProduct(int productid) =>
      _products.firstWhere((product) => product.id == productid);

  @override
  Widget build(BuildContext context) {
    Product product = findProduct(_productid);

    return Container(
        alignment: Alignment.center,
        //padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        //height: 200,
        decoration: BoxDecoration(
            //border: Border.all(color: Colors.green, width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.greenAccent[200],
                offset: const Offset(
                  0.0,
                  2.0,
                ),
                blurRadius: 1.0,
                spreadRadius: 0.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ]),
        child: Container(
            //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/product/' + product.id.toString()
                /*MaterialPageRoute(
                builder: (context) => ProductDetails(id: product.id),
              ),*/
                );
            //.pushNamed('/product/' + product.id.toString());
          },
          child: Stack(
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
                          //width: 173,
                          height: 246,
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
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
                                Text('Size: ' + product.size,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
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
          //),
        )

            /*.ripple(() {
          Navigator.of(context).pushNamed('/product/' + product.id.toString());
        })*/
            //Navigator.of(context).pushNamed('/product/' + product.id.toString());
            ));
  }
}
