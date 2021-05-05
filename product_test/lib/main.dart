import 'package:flutter/material.dart';

import 'package:product_test/config/route.dart';
//import 'package:product_test/config/onGenerateRoute.dart';
import 'package:product_test/bottomNavBar.dart';

void main() {
  runApp(Shop());
}
/*
class OnGenerateRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Shop(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}*/

class Shop extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Nav(),
      /*home: Scaffold(
        appBar: AppBar(
          title: const Text('Product Test'),
        ),
        body: ProductListWidget().build(context),
      ),*/
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
