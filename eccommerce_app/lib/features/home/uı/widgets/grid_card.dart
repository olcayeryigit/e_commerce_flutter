import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String image;
  final String title;

  GridCard({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('$title tıklandı'),
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 1, // Gölge derinliği (0–24 arası)
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6), // Köşe yuvarlama
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                image,
                fit: BoxFit.cover,
                height: 150.0,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
