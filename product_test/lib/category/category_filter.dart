import 'package:flutter/material.dart';

class CategoryFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(children: [
                Icon(
                  Icons.filter_list,
                  size: 18,
                  color: Color(0xFF222222),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.0),
                  child: Text(
                    'Filters',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ]),
            ),
            Container(
              child: Row(children: [
                Icon(
                  Icons.swap_vert,
                  size: 18,
                  color: Color(0xFF222222),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.0),
                  child: Text(
                    'Price: lowest to high',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ]),
            ),
            Icon(
              Icons.view_module,
              size: 18,
              color: Color(0xFF222222),
            ),
          ],
        ),
      ),
    );
  }
}
