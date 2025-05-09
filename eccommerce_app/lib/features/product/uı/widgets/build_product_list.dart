import 'package:eccommerce_app/features/product/u%C4%B1/widgets/build_product_card.dart';
import 'package:flutter/material.dart';

class BuildProductList extends StatelessWidget {
  final Map<String, dynamic> productList;
  BuildProductList({required this.productList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Text(productList['title']),
            Row(
              children:
                  (productList['products'] as List).map((product) {
                    return BuildProductCard(
                      name: product['name'],
                      price: product['price'],
                      image: product['image'],
                      star: product['star'],
                      likes: product['likes'],
                    );
                  }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
