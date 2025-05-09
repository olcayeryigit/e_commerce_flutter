import 'package:eccommerce_app/features/common/fade_slider/ui/widgets/fade_slider.dart';
import 'package:eccommerce_app/features/main/ui/widgets/topbar/topbar.dart';
import 'package:eccommerce_app/features/home/u%C4%B1/widgets/category_card.dart';
import 'package:eccommerce_app/features/home/u%C4%B1/widgets/grid_card.dart';
import 'package:flutter/material.dart';
import '../../../../data/categories.dart';
import '../../../../data/grid_categories.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TopBar(),
          SizedBox(
            height: 460.0,
            child: Stack(
              children: [
                FadeSlider(),
                Positioned(
                  top: 230.0,
                  left: 0, //left-right vermeyince scrollable çalışmıyor
                  right: 0,
                  child: buildCategoriesScrollable(),
                ),
              ],
            ),
          ),
          buildGridList(
            context,
            gridCategories[0]['title'],
            gridCategories[0]['categories'],
          ),
          buildGridList(
            context,
            gridCategories[1]['title'],
            gridCategories[1]['categories'],
          ),
        ],
      ),
    );
  }

  buildCategoriesScrollable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent, // Başlangıç rengi: #63dbe2
              Color.fromARGB(255, 181, 184, 182),
            ],
          ),
        ),
        child: Row(
          children:
              categories.map((category) {
                return CategoryCard(
                  image: category["image"]!, //string olduğundan eminiz
                  title: category["title"]!,
                );
              }).toList(),
        ),
      ),
    );
  }

  buildGridList(BuildContext context, String gtitle, List gCategories) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 2.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: (CrossAxisAlignment.start),
          children: [
            Row(
              children: [
                SizedBox(width: 8.0),
                Text(gtitle, style: Theme.of(context).textTheme.headlineMedium),
              ],
            ),

            GridView.builder(
              shrinkWrap:
                  true, // Bu satır GridView'ın boyutlarını ayarlar - BU SATIR KRİTİK/koymazsak hata alıyoruz
              physics:
                  NeverScrollableScrollPhysics(), // <=== Scroll çakışmasını engeller
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    2, //Ekranda 2 eleman olacak şekilde ayar yapıyoruz.
                crossAxisSpacing: 5.0,
              ),

              itemCount: gCategories.length,
              itemBuilder: (context, index) {
                // Ürün bilgilerini map'ten alıyoruz
                var category = gCategories[index];
                return GridCard(
                  image: category['image']!, // Varsayılan resim
                  title: category['title']!, // Varsayılan başlık
                );
              },
            ),
            TextButton(
              onPressed: () {},
              child: Text('See more'),
              style: TextButton.styleFrom(foregroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
