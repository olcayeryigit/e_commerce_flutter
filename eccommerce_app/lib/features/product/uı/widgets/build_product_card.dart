import 'package:eccommerce_app/features/product/u%C4%B1/widgets/build_star_Icons.dart';
import 'package:flutter/material.dart';

class BuildProductCard extends StatelessWidget {
  final String name;
  final num price;
  final int star;
  final String image;
  final num likes;

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
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //sola

          children: [
            Image.network(image, height: 100.0, fit: BoxFit.contain),
            Text(name, style: TextStyle(color: Colors.blue)),
            Row(
              children: [
                BuildStarIcons(activeStarCount: star),
                Text(likes.toString(), style: TextStyle(color: Colors.blue)),
              ],
            ),
            Text('\$' + price.toString(), style: TextStyle(color: Colors.red)),

            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {},
                child: Text('Add cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
