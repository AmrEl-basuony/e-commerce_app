import 'package:flutter/material.dart';

class SingleCartProduct extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_quantity;

  SingleCartProduct({
    this.cart_product_name,
    this.cart_product_picture,
    this.cart_product_price,
    this.cart_product_size,
    this.cart_product_color,
    this.cart_product_quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_product_picture,width: 50,height: 50,),
        title: Row(
          children: [
            Expanded(
              child: Text(cart_product_name),
            ),
            Expanded(
              child: Text(
                "\$$cart_product_price",
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("Size: $cart_product_size"),
                ),
                Expanded(
                  child: Text("Color: $cart_product_color"),
                ),
                Expanded(
                  child: Text("Quantity: $cart_product_quantity"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
