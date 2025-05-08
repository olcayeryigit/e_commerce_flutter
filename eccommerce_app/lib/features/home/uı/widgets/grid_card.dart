import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String image;
  final String title;

  GridCard({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Column(
        crossAxisAlignment: (CrossAxisAlignment.start),
        children: [
          Image.network(
            image, // Resim URL'si
            fit: BoxFit.cover,
            height: 180.0,
            width: MediaQuery.of(context).size.width,
          ),
          Text(title), // Ürün adı
        ],
      ),
    );
  }
}
