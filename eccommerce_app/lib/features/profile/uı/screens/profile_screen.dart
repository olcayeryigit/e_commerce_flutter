import 'package:eccommerce_app/features/main/ui/widgets/topbar/topbar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final List itemList = [
    {
      'image':
          'https://raw.githubusercontent.com/olcayeryigit/e_commerce_flutter/refs/heads/master/images/login/1.jpg',
      'title': 'Check order status and track, change or return items',
    },
    {
      'image':
          'https://raw.githubusercontent.com/olcayeryigit/e_commerce_flutter/refs/heads/master/images/login/2.jpg',
      'title': 'Shop past purchases and everyday essentials',
    },
    {
      'image':
          'https://raw.githubusercontent.com/olcayeryigit/e_commerce_flutter/refs/heads/master/images/login/3.jpg',
      'title': 'Create lists with items you want, now or later',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            TopBar(),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Text("Hola"),

                  Spacer(), // Boşluk bırakır ve ikonları sağa iter
                  // Sağ tarafta 1 ikon
                  InkWell(
                    onTap: () => print("Tıklandı"),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/usa.png",
                          height: 16.0,
                          fit: BoxFit.contain,
                        ),
                        Text('EN'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 45.0,
                bottom: 25.0,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 180, // Veya MediaQuery ile ekranın belli bir oranı
                    child: Text(
                      'Sign in For the best experience',
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineLarge!.copyWith(
                        height: 1.4, // ← Satır yüksekliği burada
                      ),
                    ),
                  ),
                  SizedBox(height: 35.0),

                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.fromHeight(48), // yüksekliği ayarla
                      alignment: Alignment.center, // yazıyı ortala
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ), // yatay boşluk
                      backgroundColor: Color.fromRGBO(242, 206, 114, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        side: BorderSide(color: Colors.black, width: 1.0),
                      ),
                    ),
                    onPressed: () {
                      print("butona tıklandı");
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black, // ihtiyaca göre değiştir
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.fromHeight(48), // yüksekliği ayarla
                      alignment: Alignment.center, // yazıyı ortala
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ), // yatay boşluk
                      backgroundColor: Color.fromRGBO(240, 241, 245, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        side: BorderSide(color: Colors.black, width: 1.0),
                      ),
                    ),
                    onPressed: () {
                      print("butona tıklandı");
                    },
                    child: Text(
                      'Create account',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black, // ihtiyaca göre değiştir
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //column içerisinde row döndürme
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
              child: Container(
                padding: EdgeInsets.only(bottom: 50),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                ),
                child: Column(
                  //columna direkt border verilmez
                  children:
                      itemList
                          .map(
                            (item) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.network(
                                    item['image'],
                                    height: 80.0,
                                    fit: BoxFit.contain,
                                  ),
                                  Container(
                                    width: 230.0,
                                    child: Text(item['title']),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
