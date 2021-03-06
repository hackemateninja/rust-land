import 'package:flutter/material.dart';
import 'package:rust_land/src/widgets/app_bar_widget.dart';
import 'package:rust_land/src/widgets/background_widget.dart';
import 'package:rust_land/src/widgets/card_section_widget.dart';

class BookMarkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarWidget(
        context,
        'Guardado',
        true,
      ),
      body: BackgroundWidget(
        image: 'assets/images/book_back.jpg',
        child: Container(
          child: ListView(
            padding: EdgeInsets.only(left: 75, top: 150),
            children: <Widget>[
              CardSectionWidget(
                image: 'assets/images/img1.jpg',
              ),
              CardSectionWidget(
                image: 'assets/images/img2.jpg',
              ),
              CardSectionWidget(
                image: 'assets/images/img3.jpg',
              ),
              CardSectionWidget(
                image: 'assets/images/img4.jpg',
              ),
              CardSectionWidget(
                image: 'assets/images/img1.jpg',
              ),
              CardSectionWidget(
                image: 'assets/images/img2.jpg',
              ),
              CardSectionWidget(
                image: 'assets/images/img3.jpg',
              ),
              CardSectionWidget(
                image: 'assets/images/img4.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
