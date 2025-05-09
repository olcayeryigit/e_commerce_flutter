import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String image;
  final String title;

  GridCard({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('${title} tıklandı'),
      child: Card(
        shadowColor: Color.fromARGB(0, 255, 255, 255),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
        child: Column(
          crossAxisAlignment: (CrossAxisAlignment.start),
          children: [
            Image.network(
              image, // Resim URL'si
              fit: BoxFit.cover,
              height: 160.0,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(title),
            ), // Ürün adı
          ],
        ),
      ),
    );
  }
}
