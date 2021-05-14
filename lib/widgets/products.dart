import 'package:e_commerce/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list=[
    {
      "name":"Men Blazer",
      "picture":"assets/blazer1.jpeg",
      "price":100,
    },
    {
      "name":"Women Blazer",
      "picture":"assets/blazer2.jpeg",
      "price":100,
    },
    {
      "name":"Red Dress",
      "picture":"assets/dress1.jpeg",
      "price":200,
    },
    {
      "name":"Dress",
      "picture":"assets/dress2.jpeg",
      "price":200,
    },
    {
      "name":"Pants",
      "picture":"assets/pants1.jpg",
      "price":100,
    },
    {
      "name":"Jeans",
      "picture":"assets/pants2.jpeg",
      "price":100,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return SingleProduct(
          product_name: product_list[index]["name"],
          product_picture: product_list[index]["picture"],
          product_price: product_list[index]["price"],
        );
      },
    );
  }
}
