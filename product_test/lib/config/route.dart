import 'package:flutter/material.dart';

import 'package:product_test/product/product_details.dart';
//import 'package:product_test/product/product_list.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var path = settings.name.split('/');

    if (path[1] == "product") {
      return new MaterialPageRoute(
        builder: (context) => ProductDetails(id: int.parse(path[2])),
      );
    }
    return _errorRoute();
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('ERROR'),
      ),
    );
  });
}
