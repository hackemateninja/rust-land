import 'package:flutter/material.dart';
import 'package:rust_land/src/screens/home_screen.dart';
import 'package:rust_land/src/screens/sections_screen.dart';
import 'package:rust_land/src/widgets/MenuItemWidet.dart';
import 'package:rust_land/src/widgets/app_bar_widget.dart';
import 'package:rust_land/src/widgets/background_widget.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarWidget(
        context,
        'Navegación',
        true,
      ),
      body: BackgroundWidget(
        image: 'assets/images/back_search.jpg',
        child: Padding(
          padding: EdgeInsets.only(top: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MenuItemWidget(
                title: 'Inicio',
                screen: HomeScreen(),
              ),
              MenuItemWidget(
                title: 'Capítulos',
                screen: SectionsScreen(),
              ),
              MenuItemWidget(
                title: 'Sobre el app',
                screen: HomeScreen(),
              ),
              MenuItemWidget(
                title: 'Contacto',
                screen: HomeScreen(),
              ),
              Row(
                children: <Widget>[],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
