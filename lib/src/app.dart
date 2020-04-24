import 'package:flutter/material.dart';
import 'package:rust_land/src/behaviors/custom_scroll_behavior.dart';
import 'package:rust_land/src/routes/routes.dart';

class RustLandApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Rust Land',
          initialRoute: '/',
          routes: routesBuilder(),
          builder: (context, child) {
            return ScrollConfiguration(
              behavior: CustomScrollBehavior(),
              child: child,
            );
          },
        );
      },
    );
  }
}
