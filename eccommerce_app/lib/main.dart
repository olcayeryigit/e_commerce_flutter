import 'package:eccommerce_app/features/main/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const EcommerceApp());

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(), // MainScreen, BottomNavigationBar ile gelir
    );
  }
}
