import 'package:flutter/material.dart';

import 'single_cart_product.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var incart_products = [
    {
      "name": "Men Blazer",
      "picture": "assets/blazer1.jpeg",
      "price": 100,
      "size": "L",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Women Blazer",
      "picture": "assets/blazer2.jpeg",
      "price": 100,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: incart_products.length,
      itemBuilder: (context, index) {
        return SingleCartProduct(
          cart_product_name: incart_products[index]["name"],
          cart_product_picture: incart_products[index]["picture"],
          cart_product_price: incart_products[index]["price"],
          cart_product_size: incart_products[index]["size"],
          cart_product_color: incart_products[index]["color"],
          cart_product_quantity: incart_products[index]["quantity"],
        );
      },
    );
  }
}
