import 'package:flutter/material.dart';
import 'package:rust_land/src/routes/fade_animation_route.dart';

class MenuItemWidget extends StatelessWidget {
  final String title;
  final Widget screen;

  MenuItemWidget({
    this.title,
    this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        title,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontFamily: 'Pricedown',
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          FadeAnimationRoute(
            page: screen,
          ),
        );
      },
    );
  }
}
