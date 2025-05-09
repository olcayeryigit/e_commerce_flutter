import 'package:eccommerce_app/features/product/u%C4%B1/widgets/build_product_card.dart';
import 'package:flutter/material.dart';

class BuildProductList extends StatelessWidget {
  final Map<String, dynamic> productList;
  BuildProductList({required this.productList});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //sola

            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(productList['title']),
              ),
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
      ),
    );
  }
}

/*
Görsel oluştur productList bir Map<String, dynamic> olduğu için,
productList['products'] ifadesinin tipi Dart'a göre dynamic olur. dynamic bir değişkende .map(...) fonksiyonu çağırmak derleme zamanında hata üretir, çünkü Dart:

dynamic türünün .map fonksiyonuna sahip olup olmadığını bilemez.

.map fonksiyonu sadece Iterable (List, Set vs.) veri türlerinde vardır. as List Ne Yapıyor?
Şu ifade:

dart
Kopyala
Düzenle
(productList['products'] as List)
Dart’a şunu demektir:

“Ben bu verinin bir List olduğunu biliyorum, ona göre işle!”

Bu sayede .map(...) fonksiyonu güvenle çalışır çünkü Dart artık listenin metodlarını tanır. */
