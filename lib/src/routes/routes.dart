import 'package:flutter/material.dart';
import 'package:rust_land/src/screens/book_mark_screen.dart';
import 'package:rust_land/src/screens/home_screen.dart';
import 'package:rust_land/src/screens/menu_screen.dart';
import 'package:rust_land/src/screens/search_screen.dart';
import 'package:rust_land/src/screens/sections_screen.dart';

Map<String, WidgetBuilder> routesBuilder() {
  return {
    '/': (BuildContext context) => HomeScreen(),
    '/bookmark': (BuildContext context) => BookMarkScreen(),
    '/search': (BuildContext context) => SearchScreen(),
    '/sections': (BuildContext context) => SectionsScreen(),
    '/menu': (BuildContext context) => MenuScreen(),
  };
}
