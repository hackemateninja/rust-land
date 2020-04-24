import 'package:flutter/material.dart';
import 'package:rust_land/src/routes/left_animation_route.dart';
import 'package:rust_land/src/routes/right_animation_route.dart';
import 'package:rust_land/src/screens/menu_screen.dart';
import 'package:rust_land/src/screens/search_screen.dart';

AppBar appBarWidget(BuildContext context, String title, bool isSecondary) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    title: Text(
      title,
      style: TextStyle(
        fontSize: 30.0,
        fontFamily: 'Pricedown',
      ),
    ),
    elevation: 0.0,
    actions: isSecondary
        ? <Widget>[
            IconButton(
              icon: Icon(
                Icons.close,
                size: 30.0,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ]
        : <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  LeftAnimationRoute(
                    page: SearchScreen(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/bookmark');
              },
            ),
            IconButton(
              tooltip: 'Menu',
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  RightAnimationRoute(
                    page: MenuScreen(),
                  ),
                );
              },
            ),
          ],
  );
}
