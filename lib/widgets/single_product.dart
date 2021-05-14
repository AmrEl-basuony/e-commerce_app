import 'package:e_commerce/pages/product_details.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_price;

  SingleProduct({this.product_name, this.product_picture, this.product_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetails(
                      product_detail_name: product_name,
                      product_detail_picture: product_picture,
                      product_detail_price: product_price,
                    ))),
            child: GridTile(
              child: Image.asset(
                product_picture,
                fit: BoxFit.cover,
              ),
              footer: Container(
                color: Colors.white70,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        product_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text("\$$product_price",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
