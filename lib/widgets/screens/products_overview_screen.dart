import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teeshop/models/product.dart';

import '../product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  List<Product> loadedProducts = [
    Product(
      id: 'a1',
      title: 'Plain White Tee',
      description:
          'A plain white unisex T-shirt, made up of high quality linen for top fashioners',
      color: Colors.white,
      price: 400.00,
      imageUrls: [
        'https://image.freepik.com/free-photo/young-girl-posing-with-her-t-shirt_23-2147636061.jpg',
      ],
    ),
    Product(
      id: 'a2',
      title: 'Skate With Tee',
      description:
          'Casual T-shirt for skating geeks. Attention! - Too cool to handle.',
      color: Colors.green,
      price: 400.00,
      imageUrls: [
        'https://image.freepik.com/free-psd/guy-with-green-t-shirt-cap_23-2147653517.jpg',
      ],
    ),
    Product(
      id: 'a3',
      title: 'A Classic for Classic',
      description:
          'Custom print white Tee, specially designed for you to rock it on.',
      color: Colors.white,
      price: 500.00,
      imageUrls: [
        'https://image.freepik.com/free-photo/pretty-woman-wearing-tshirt_1303-14606.jpg',
      ],
    ),
    Product(
      id: 'a4',
      title: 'Hot Red',
      description:
          'Red like roses, hot like you. Introducing this top quality t-shirt specially designed to show off those curves.',
      color: Colors.red,
      price: 450.00,
      imageUrls: [
        'https://image.freepik.com/free-photo/happy-young-woman-posin-gwith-red-t-shirt_23-2147653638.jpg',
      ],
    ),
    Product(
      id: 'a5',
      title: 'Raglan',
      description:
          'Unisex raglan t-shirt, because when good quality matches great looks you get top notch fashion.',
      color: Colors.white,
      price: 550.00,
      imageUrls: [
        'https://image.freepik.com/free-photo/young-girl-posing-with-her-t-shirt_23-2147633586.jpg',
      ],
    ),
    Product(
      id: 'a6',
      title: 'Sweats',
      description:
          'Want to look cute and sexy at the same time?\n No problem, we get you covered baby. Try this amazing sweat-shirt made microfiber, designed to keep fresh and odour free for long periods.',
      color: Colors.grey,
      price: 900.00,
      imageUrls: [
        'https://image.freepik.com/free-photo/smiling-portrait-young-woman-pinching-her-t-shirt-looking-away-against-grey-backdrop_23-2148169393.jpg',
      ],
    ),
    Product(
      id: 'a7',
      title: 'Printed Black Tee',
      description:
          'A black women\'s t-shirt with minimal print. Recommended by top fashion bloggers. Look cute and feel comfy at the same time, now at an amazing price too.',
      color: Colors.black,
      price: 450.00,
      imageUrls: [
        'https://image.freepik.com/free-photo/pretty-woman-wearing-tshirt_1303-14678.jpg',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
      middle: Text(
      'Tee Shop',
    ),
    ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, index) => ProductItem(
          productId: loadedProducts[index].id,
          price: loadedProducts[index].price,
          productColor: loadedProducts[index].color,
          productTitle: loadedProducts[index].title,
          productImageUrl: loadedProducts[index].imageUrls[0],
          productDescription: loadedProducts[index].description,

        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
