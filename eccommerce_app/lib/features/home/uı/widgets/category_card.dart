import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;

  CategoryCard({required this.image, required this.title});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {print('${title} tıklandı')},
      child: Container(
        width: MediaQuery.of(context).size.width / 2.6,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, //childleri sola hizalar
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(height: 40.0, child: Text('${title}')),
              ),

              Image.network(
                '${image}',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: 150.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
