import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      height: 40,
      //color: Colors.amber,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryItem(text: "Summer"),
          CategoryItem(text: "T-Shirts"),
          CategoryItem(text: "Shirts"),
          CategoryItem(text: "Summer"),
          CategoryItem(text: "T-Shirts"),
          CategoryItem(text: "Shirts"),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key key, this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 30,
      width: 100,
      alignment: Alignment.center,
      //padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          color: Color(0xFF222222), borderRadius: BorderRadius.circular(15.0)),
      child: Text(text, style: Theme.of(context).textTheme.headline5),
    );
  }
}
