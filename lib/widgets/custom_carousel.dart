import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/c1.jpg'),
          AssetImage('assets/m1.jpeg'),
          AssetImage('assets/w1.jpeg'),
          AssetImage('assets/w3.jpeg'),
          AssetImage('assets/m2.jpg')
        ],
        animationCurve: Curves.fastOutSlowIn,
        dotSize: 5,
        indicatorBgPadding: 7,
      ),
    );
  }
}
