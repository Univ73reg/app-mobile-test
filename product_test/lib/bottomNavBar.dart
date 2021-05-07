import 'package:flutter/material.dart';

import 'package:product_test/pages/home.dart';
import 'package:product_test/product/product_list.dart';
import 'package:product_test/pages/cart.dart';
import 'package:product_test/pages/favorite.dart';
import 'package:product_test/pages/person.dart';

class Nav extends StatefulWidget {
  int _indexPage;

  Nav({int indexPage}) : _indexPage = indexPage;

  @override
  _NavState createState() => _NavState(indexPage: _indexPage);
}

class _NavState extends State<Nav> {
  int _selectedIndex;

  _NavState({int indexPage}) : _selectedIndex = indexPage;

  List<Widget> _widgetOptions = <Widget>[
    Home(),
    //Text('Главная'),
    ProductListWidget(),
    Cart(),
    Favorite(),
    Person(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Color(0xFFF9F9F9),
        title: Container(
          padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
          child: Align(
            child: Text('Title appBar',
                style: Theme.of(context).textTheme.headline6),
            alignment: Alignment.center,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () => null,
            color: Color(0xFF222222),
          ),
        ],
      ),*/
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFFFFFF),
        //showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Theme.of(context).iconTheme.color,
        unselectedItemColor: Color(0xFF9B9B9B),

        selectedIconTheme: Theme.of(context).iconTheme,
        unselectedIconTheme: Theme.of(context)
            .iconTheme
            .copyWith(opacity: 0.5, color: Color(0xFF9B9B9B)),

        //fixedColor: Color(0xFFDB3022),

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(
              Icons.home,
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            activeIcon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            activeIcon: Icon(
              Icons.shopping_bag,
            ),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
            ),
            activeIcon: Icon(
              Icons.favorite,
            ),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            activeIcon: Icon(
              Icons.person,
            ),
            label: 'Профиль',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}

/*
class bottomNavBar extends StatelessWidget {
  const bottomNavBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 10,
            color: Colors.black45,
            offset: Offset(2, 2),
            spreadRadius: 1),
        BoxShadow(
            blurRadius: 2,
            color: Colors.white,
            offset: Offset(0, 0),
            spreadRadius: 1),
      ]),
      child: Container(
        color: Color(0xFFedc112),
        child: Center(
          child: Text('bottom Navigation Bar'),
        ),
      ),
    );
  }
}
*/
