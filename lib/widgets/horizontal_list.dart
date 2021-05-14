import 'package:e_commerce/widgets/category.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(img: 'assets/tshirt.png',caption: 'Shirts'),
          Category(img: 'assets/accessories.png',caption: 'Accessories'),
          Category(img: 'assets/dress.png',caption: 'Dress'),
          Category(img: 'assets/formal.png',caption: 'Formal'),
          Category(img: 'assets/informal.png',caption: 'Informal'),
          Category(img: 'assets/jeans.png',caption: 'Jeans'),
          Category(img: 'assets/shoe.png',caption: 'Shoes'),
        ],
      ),
    );
  }
}
