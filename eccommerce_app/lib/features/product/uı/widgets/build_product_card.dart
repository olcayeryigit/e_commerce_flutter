import 'package:flutter/material.dart';

class BuildProductCard extends StatelessWidget {
  final String name;
  final double price;
  final int star;
  final String image;
  final int likes;

  BuildProductCard({
    required this.name,
    required this.price,
    required this.image,
    required this.star,
    required this.likes,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(image, height: 100.0, fit: BoxFit.contain),
          Text(name),
        ],
      ),
    );
  }
}
