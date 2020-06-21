import 'package:flutter/material.dart';

import './screens/product_details_screen.dart';

class ProductItem extends StatelessWidget {
  final String productId;
  final String productTitle;
  final String productImageUrl;
  final String productDescription;
  final double price;
  final Color productColor;

  const ProductItem({
    Key key,
    this.productId,
    this.productTitle,
    this.productDescription,
    this.productImageUrl,
    this.price,
    this.productColor,
  }) : super(key: key);

  void loadProductsDetailsScreen(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
        ProductDetailsScreen.routeName,
        arguments: productId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {loadProductsDetailsScreen(context);},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
//        header: GridTileBar(
//
//          title: Text('My nice lil tee',style: Theme.of(context).textTheme.subtitle2,),
//        ),
          child: Stack(
            children: <Widget>[
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/placeholder.jpg',
                fadeInCurve: Curves.fastOutSlowIn,
                image: productImageUrl,
                fit: BoxFit.cover,
                height: double.infinity,
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.2),
                      Colors.black.withOpacity(0.5),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: ClipOval(
                  child: Material(
                    color: Colors.white,
                    child: GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.favorite_border,
                        ),
                      ),
                      onTap: () {
                        //....
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          footer: GridTileBar(
//            backgroundColor: Colors.white.withOpacity(0.5),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  productTitle,
                  style: Theme.of(context).textTheme.subtitle2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  productDescription,
                  style: TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 4,
                ),
              ],
            ),
            subtitle: Text(
              '\u20B9' + price.toStringAsFixed(2),
              style: Theme.of(context).textTheme.headline1,
            ),
            trailing: CircleAvatar(
              backgroundColor: productColor,
              maxRadius: 10,
            ),
          ),
        ),
      ),
    );
  }
}
