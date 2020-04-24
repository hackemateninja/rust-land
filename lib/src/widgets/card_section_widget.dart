import 'dart:ui';

import 'package:flutter/material.dart';

class CardSectionWidget extends StatelessWidget {
  final String image;

  CardSectionWidget({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 35),
      width: 275,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 8.0,
            spreadRadius: 5.0,
            offset: Offset(1.0, 1.0),
          ),
        ],
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
        child: Container(
          color: Colors.black.withOpacity(0.3),
        ),
      ),
    );
  }
}
