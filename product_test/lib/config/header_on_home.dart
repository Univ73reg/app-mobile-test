import 'package:flutter/material.dart';

//import 'package:product_test/product/product_list.dart';
import 'package:product_test/bottomNavBar.dart';

class HeaderOnHome extends StatelessWidget {
  const HeaderOnHome({Key key, this.header, this.subheader}) : super(key: key);

  final String header;
  final String subheader;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      margin: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(header, style: Theme.of(context).textTheme.headline1),
              Text(subheader, style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
          InkWell(
            onTap: () {
              /*Navigator.pushNamed(context, '/product/');*/
              Navigator.push(
                context,
                //MaterialPageRoute(builder: (context) => ProductListWidget()),
                MaterialPageRoute(builder: (context) => Nav(indexPage: 1)),
              );
            },
            child: Container(
              child:
                  Text('ViewAll', style: Theme.of(context).textTheme.bodyText2),
            ),
          ),
        ],
      ),
    );
  }
}
