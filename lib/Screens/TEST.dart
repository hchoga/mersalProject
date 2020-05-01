import 'package:flutter/material.dart';

class Product {
  final String id, goal, imageUrl;
  final int per;
  final int percentage;

  final bool isFavourite;

  Product(
      {@required this.id,
        @required this.goal,
        @required this.percentage,
        @required this.imageUrl,
        @required this.per,
        this.isFavourite=false});
}
