import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final Color color;
  final double price;
  final List<String> imageUrls; //the first image is the face image.

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.color,
    @required this.price,
    @required this.imageUrls,
  });
}
