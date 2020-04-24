import 'package:flutter/material.dart';
import 'package:rust_land/src/routes/scale_animation_route.dart';
import 'package:rust_land/src/screens/sections_screen.dart';
import 'package:rust_land/src/widgets/background_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        image: 'assets/images/splash.jpg',
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image(
              width: 300,
              height: 300,
              image: AssetImage('assets/images/logo.png'),
            ),
            RaisedButton(
              color: Colors.orange,
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              child: Text(
                'Empezar',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 20.0,
                  fontFamily: 'Pricedown',
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  ScaleAnimationRoute(
                    page: SectionsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
