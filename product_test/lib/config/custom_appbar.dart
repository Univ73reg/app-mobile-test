import 'package:flutter/material.dart';

import 'package:product_test/category/category_list.dart';
import 'package:product_test/category/category_filter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: const Offset(
            0.0,
            1.0,
          ),
          blurRadius: 4.0,
          spreadRadius: 0.0,
        ), //BoxShadow
        BoxShadow(
          color: Colors.white,
          offset: const Offset(0.0, 0.0),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ), //BoxShadow
      ]),
      child: Column(
        children: [
          Container(
            color: Color(0xFFF9F9F9),
            padding: EdgeInsets.only(top: 30),
            child: Row(children: [
              /*IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),*/
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                  child: Align(
                    child: Text('Каталог',
                        style: Theme.of(context).textTheme.headline6),
                    alignment: Alignment.center,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () => null,
                color: Color(0xFF222222),
              ),
            ]),
          ),
          Container(
            height: 90,
            color: Color(0xFFFFFFFF),
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Column(
              children: [
                CategoryList(),
                CategoryFilter(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
