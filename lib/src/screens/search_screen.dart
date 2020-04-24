import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rust_land/src/widgets/app_bar_widget.dart';
import 'package:rust_land/src/widgets/background_widget.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: appBarWidget(
            context,
            'Búsqueda',
            true,
          ),
          body: BackgroundWidget(
            image: 'assets/images/plane.jpg',
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 120,
                      horizontal: 40,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      autofocus: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Josefin',
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.black38,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white70,
                          size: 30,
                        ),
                        labelText: 'Buscar',
                        labelStyle: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: 'Pricedown',
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white54,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
