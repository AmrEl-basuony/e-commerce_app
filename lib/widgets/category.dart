import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String img;
  final String caption;

  Category({this.img, this.caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Container(
        width: 100,
        child: InkWell(
          onTap: () {},
          child: ListTile(
            title: Image.asset(
              img,
              width: 100,
              height: 80,
            ),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  caption,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
