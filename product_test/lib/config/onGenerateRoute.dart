import 'package:flutter/material.dart';

import 'package:product_test/config/route.dart';
import 'package:product_test/main.dart';

class OnGenerateRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Shop(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
