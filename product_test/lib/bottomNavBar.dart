import 'package:flutter/material.dart';

import 'package:product_test/pages/home.dart';
import 'package:product_test/product/product_list.dart';
import 'package:product_test/pages/cart.dart';
import 'package:product_test/pages/favorite.dart';
import 'package:product_test/pages/person.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;

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
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        //iconSize: 36,
        //showSelectedLabels: true,
        //showUnselectedLabels: true,
        //selectedItemColor: Color(0xFFDB3022),

        //fixedColor: Color(0xFFDB3022),

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xFF757575),
            ),
            activeIcon: Icon(
              Icons.home,
              color: Color(0xFF757575),
            ),
            label: 'Главная',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xFF757575),
            ),
            activeIcon: Icon(
              Icons.shopping_cart,
              color: Color(0xFF757575),
            ),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              //Icons.card_giftcard,
              Icons.shopping_bag_outlined,
              color: Color(0xFF757575),
            ),
            activeIcon: Icon(
              Icons.shopping_bag,
              color: Color(0xFF757575),
            ),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: Color(0xFF757575),
            ),
            activeIcon: Icon(
              Icons.favorite,
              color: Color(0xFF757575),
            ),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Color(0xFF757575),
            ),
            activeIcon: Icon(
              Icons.person,
              color: Color(0xFF757575),
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
