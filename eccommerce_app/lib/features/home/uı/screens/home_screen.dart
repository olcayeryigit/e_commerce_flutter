import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*return Scaffold(appBar: buildAppBar(), body: buildBody());*/
    return buildBody();
  }

  /*
  buildAppBar() {
    return AppBar(
      toolbarHeight: 105.0,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        padding: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF63DBE2), // Başlangıç rengi: #63dbe2
              Color(0xFF8EE8CE),
            ], // Bitiş rengi: #8ee8ce]),
          ),
        ),
        child: Column(children: [buildSearchInput(), buildDropdownRow()]),
      ),
    );
  }
*/
  buildSearchInput() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: "Search or ask a question",
        filled: true, // Arka plan renginin uygulanabilmesi için 'true' olmalı
        fillColor: Colors.white, // Arka plan rengini buradan veriyoruz,
        suffixIcon: Icon(Icons.center_focus_weak),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }

  buildDropdownRow() {
    return Row(
      children: [
        Icon(Icons.location_on_outlined),
        DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text("Deliver to"),

            items:
                ['Option 1', 'Option 2', 'Option 3'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
            onChanged: (String? value) {},
            icon: SizedBox.shrink(),
          ),
        ),
        SizedBox(width: 5.00),
        Text(
          "Turkey",
          style: TextStyle(color: Colors.blueGrey, fontSize: 14.0),
        ),
      ],
    );
  }

  buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 400.0,
            child: Stack(
              children: [
                buildImageSlider(),
                Positioned(
                  top: 200.0,
                  left: 0, //left-right vermeyince scrollable çalışmıyor
                  right: 0,
                  child: buildCategoriesScrollable(),
                ),
              ],
            ),
          ),
          buildGridList(),
        ],
      ),
    );
  }

  Widget buildImageSlider() {
    return ImageSlideshow(
      width: double.infinity,
      height: 250.0,
      initialPage: 0,
      indicatorColor: Colors.transparent,
      indicatorBackgroundColor: Colors.transparent,
      autoPlayInterval: 3000,
      isLoop: true,
      children: [
        InkWell(
          onTap: () {
            print("Tıklandı");
          },
          child: Image.network(
            'https://raw.githubusercontent.com/olcayeryigit/LumaSlideReact/refs/heads/master/src/sliders/dual-panel/assets/images/2.webp',
            fit: BoxFit.cover,
          ),
        ),
        InkWell(
          onTap: () {
            print("Tıklandı");
          },
          child: Image.network(
            'https://raw.githubusercontent.com/olcayeryigit/LumaSlideReact/refs/heads/master/src/sliders/dual-panel/assets/images/1.webp',
            fit: BoxFit.cover,
          ),
        ),
        InkWell(
          onTap: () {
            print("Tıklandı");
          },
          child: Image.network(
            'https://raw.githubusercontent.com/olcayeryigit/LumaSlideReact/refs/heads/master/src/sliders/dual-panel/assets/images/3.webp',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  buildCategoriesScrollable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          InkWell(
            onTap: () {
              print("Tıklandı");
            },
            child: Card(
              //cardın kendinden margin değeri vardır
              child: Column(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/olcayeryigit/LumaSlideReact/refs/heads/master/src/sliders/dual-panel/assets/images/1.webp',
                    fit: BoxFit.cover,
                    height: 100.0,
                  ),
                  Text("Ürün adı"),
                  Text("Ürün Açıklama"),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("Tıklandı");
            },
            child: Card(
              child: Column(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/olcayeryigit/LumaSlideReact/refs/heads/master/src/sliders/dual-panel/assets/images/2.webp',
                    fit: BoxFit.cover,
                    height: 100.0,
                  ),
                  Text("Ürün adı"),
                  Text("Ürün Açıklama"),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("Tıklandı");
            },
            child: Card(
              child: Column(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/olcayeryigit/LumaSlideReact/refs/heads/master/src/sliders/dual-panel/assets/images/3.webp',
                    fit: BoxFit.cover,
                    height: 100.0,
                  ),
                  Text("Ürün adı"),
                  Text("Ürün Açıklama"),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("Tıklandı");
            },
            child: Card(
              child: Column(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/olcayeryigit/LumaSlideReact/refs/heads/master/src/sliders/dual-panel/assets/images/4.webp',
                    fit: BoxFit.cover,
                    height: 100.0,
                  ),
                  Text("Ürün adı"),
                  Text("Ürün Açıklama"),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("Tıklandı");
            },
            child: Card(
              child: Column(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/olcayeryigit/LumaSlideReact/refs/heads/master/src/sliders/dual-panel/assets/images/1.webp',
                    fit: BoxFit.cover,
                    height: 100.0,
                  ),
                  Text("Ürün adı"),
                  Text("Ürün Açıklama"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildGridList() {
    return Column(
      children: [
        Text("Categories Title"),
        GridView.count(
          crossAxisCount: 2, // Ekranda 2 eleman olacak şekilde ayar yapıyoruz.
          shrinkWrap: true, // <=== BU SATIR KRİTİK/koymazsak hata alıyoruz
          physics:
              NeverScrollableScrollPhysics(), // <=== Scroll çakışmasını engeller
          children: [
            Card(
              child: Column(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/olcayeryigit/LumaSlideReact/refs/heads/master/src/sliders/dual-panel/assets/images/1.webp',
                    fit: BoxFit.cover,
                    height: 100.0,
                  ),
                  Text("Ürün adı"),
                  Text("Ürün Açıklama"),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/olcayeryigit/LumaSlideReact/refs/heads/master/src/sliders/dual-panel/assets/images/1.webp',
                    fit: BoxFit.cover,
                    height: 100.0,
                  ),
                  Text("Ürün adı"),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/olcayeryigit/LumaSlideReact/refs/heads/master/src/sliders/dual-panel/assets/images/1.webp',
                    fit: BoxFit.cover,
                    height: 100.0,
                  ),
                  Text("Ürün adı"),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/olcayeryigit/LumaSlideReact/refs/heads/master/src/sliders/dual-panel/assets/images/1.webp',
                    fit: BoxFit.cover,
                    height: 100.0,
                  ),
                  Text("Ürün adı"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
