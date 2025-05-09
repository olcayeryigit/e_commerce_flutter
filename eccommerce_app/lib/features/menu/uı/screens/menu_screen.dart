import 'package:eccommerce_app/data/departments.dart';
import 'package:eccommerce_app/features/main/ui/widgets/topbar/topbar.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TopBar(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 243, 243, 243),
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),

              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ExpansionTile(
              shape: Border.all(style: BorderStyle.none),
              title: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 0.0,
                  horizontal: 4.0,
                ), // Yüksekliği azaltmak için sadece dikey padding'i ayarlarız
                child: Text(
                  'Shop By Department',
                  style: TextStyle(
                    fontSize: 16,
                  ), // Font boyutunu da küçültebilirsiniz
                ),
              ),
              children:
                  departments.map((department) {
                    return ListTile(title: Text(department['name']!));
                  }).toList(),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: EdgeInsets.only(
              top: 16.0,
              bottom: 16.0,
              left: 16.0,
              right: 24.0,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 243, 243, 243),
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Customer Service', style: TextStyle(fontSize: 16)),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: EdgeInsets.only(
              top: 16.0,
              bottom: 16.0,
              left: 16.0,
              right: 24.0,
            ),

            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 243, 243, 243),
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sign in', style: TextStyle(fontSize: 16)),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(Icons.info, color: Colors.teal),
                Text("Looking for app settings? They've moved to"),
                Icon(Icons.person_outline),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
