import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../image_carousel.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String routeName = '/product-details-screen';
//  final String title;
//  final String description;
//  final List<String> images;
//  final double price;
//  final Color color;
//
//  const ProductDetailsScreen(
//      {Key key,
//      this.title,
//      this.description,
//      this.images,
//      this.price,
//      this.color});

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(
          'Product Details',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ImageCarousel(images),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '\u20B9' + price.toStringAsFixed(2),
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '33% OFF',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
