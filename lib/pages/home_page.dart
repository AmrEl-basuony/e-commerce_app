import 'package:e_commerce/widgets/products.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_carousel.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/horizontal_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-commerce"),
        elevation: 0,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: CustomDrawer(),
      body: ListView(
        children: [
          CustomCarousel(),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          HorizontalList(),
          Padding(
            padding: EdgeInsets.fromLTRB(8,20,0,0),
            child: Text(
              'Recent products',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 320,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
