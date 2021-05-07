import 'package:flutter/material.dart';

import 'package:product_test/config/custom_HomeAappBar.dart';
import 'package:product_test/config/header_on_home.dart';
import 'package:product_test/product/products_on_home.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHomeAppBar(
        height: 200,
      ),
      body: ListView(children: [
        HeaderOnHome(header: 'Sale', subheader: 'Super summer sale'),
        ProductOnHome(),
        HeaderOnHome(header: 'New', subheader: 'You’ve never seen it before!'),
        ProductOnHome(),
        HeaderOnHome(header: 'Best', subheader: 'You’ve never seen it before!'),
        ProductOnHome(),
      ]),
    );
  }
}
