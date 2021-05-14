import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_price;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_picture,
      this.product_detail_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Text("\$${widget.product_detail_price}"),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  elevation: 0,
                  color: Colors.white,
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Size")),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  elevation: 0,
                  color: Colors.white,
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Color")),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  elevation: 0,
                  color: Colors.white,
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Qty")),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  elevation: 0,
                  color: Colors.red,
                  onPressed: () {},
                  textColor: Colors.white,
                  child: Text("Buy"),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.red,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product details"),
            subtitle: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi malesuada porta lacinia. Fusce tempor elementum risus luctus lacinia. Cras velit mi, consequat nec enim id, mattis pulvinar lectus. Curabitur magna nisi, ullamcorper in maximus quis, vestibulum id urna. Aenean interdum dui est. Fusce et metus ut nunc porttitor venenatis sit amet vel odio. Nam iaculis, nulla vitae aliquet fringilla, libero augue blandit ex, in scelerisque justo lacus ut lacus. Nullam pellentesque est consectetur quam lacinia venenatis. Donec auctor dui ac velit dictum, at facilisis ex pulvinar. Praesent sem tellus, volutpat ut tristique in, mattis nec erat. Praesent urna orci, fermentum id libero quis, vulputate aliquet sem. Vestibulum tempus efficitur arcu, vitae placerat ipsum aliquam at."),
          ),
        ],
      ),
    );
  }
}
