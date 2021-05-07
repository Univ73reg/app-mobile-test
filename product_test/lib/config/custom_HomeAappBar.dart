import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomHomeAppBar({
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
      child: Container(
        child: Image.asset(
          'assets/images/street-clothes.jpg',
          fit: BoxFit.contain,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
