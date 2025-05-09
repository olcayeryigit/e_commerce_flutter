import 'package:eccommerce_app/features/main/ui/widgets/topbar/widgets/topbar.dart';
import 'package:eccommerce_app/features/product/u%C4%B1/widgets/build_product_list.dart';
import 'package:flutter/material.dart';
import '../../../../data/productLists.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          TopBar(),
          Image.network(
            'https://raw.githubusercontent.com/olcayeryigit/e_commerce_flutter/refs/heads/master/images/cart/cart.jpg',
            height: 200.0,
            fit: BoxFit.contain,
          ),
          Text('Your Amazon Cart is empty', textAlign: TextAlign.center),
          Text(
            'Nothing in here. Only possibilities',
            textAlign: TextAlign.center,
          ),

          InkWell(
            child: Text("Shop today's deals", textAlign: TextAlign.center),
          ),

          SizedBox(height: 20.0),

          TextButton(
            style: TextButton.styleFrom(
              minimumSize: Size.fromHeight(48), // yüksekliği ayarla
              alignment: Alignment.center, // yazıyı ortala
              padding: EdgeInsets.symmetric(horizontal: 16), // yatay boşluk
              backgroundColor: Colors.amber,
            ),
            onPressed: () {
              print("butona tıklandı");
            },
            child: Text(
              'Sign in to your account',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, // ihtiyaca göre değiştir
              ),
            ),
          ),
          SizedBox(height: 8.0),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: Size.fromHeight(48), // yüksekliği ayarla
              alignment: Alignment.center, // yazıyı ortala
              padding: EdgeInsets.symmetric(horizontal: 16), // yatay boşluk
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
                side: BorderSide(color: Colors.black, width: 1.0),
              ),
            ),
            onPressed: () {
              print("butona tıklandı");
            },
            child: Text(
              'Sign up now',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, // ihtiyaca göre değiştir
              ),
            ),
          ),
          BuildProductList(productList: productLists[0]),
        ],
      ),
    );
  }
}
