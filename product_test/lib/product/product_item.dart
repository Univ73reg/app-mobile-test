import 'package:flutter/material.dart';

import 'package:product_test/model/product.dart';
import 'package:product_test/product/products.dart';
//import 'package:product_test/product/product_details.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
// ignore: must_be_immutable
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
      /* decoration: BoxDecoration(
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
            ]),*/
      child: Container(
          //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/product/' + product.id.toString()
              /*MaterialPageRoute(
                builder: (context) => ProductDetails(id: product.id),
              ),*/
              );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
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
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                      child: RatingBarIndicator(
                        rating: product.rating,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 15.0,
                        //direction: Axis.vertical,
                      ),
                    ),
                    Text(product.briefDescription,
                        style: Theme.of(context).textTheme.bodyText1),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
                      child: Text(
                        product.name,
                        style: Theme.of(context).textTheme.headline4,
                        //TextStyle(
                        //fontSize: 16, fontWeight: FontWeight.bold)
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Color: ',
                                style: Theme.of(context).textTheme.bodyText1),
                            Text(product.color,
                                style: Theme.of(context).textTheme.bodyText2),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Row(
                            children: [
                              Text('Size: ',
                                  style: Theme.of(context).textTheme.bodyText1),
                              Text(product.size,
                                  style: Theme.of(context).textTheme.bodyText2),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
                      child: Text(
                        product.price.toString() + product.currency,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(fontSize: 14),
                      ),
                    ),
                  ]),
            )
          ],
        ),

        //),
      )

          /*.ripple(() {
          Navigator.of(context).pushNamed('/product/' + product.id.toString());
        })*/
          //Navigator.of(context).pushNamed('/product/' + product.id.toString());
          ),
    );
  }
}
