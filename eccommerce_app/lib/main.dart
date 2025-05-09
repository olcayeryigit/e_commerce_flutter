import 'package:eccommerce_app/features/main/ui/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() => runApp(ProviderScope(child: EcommerceApp()));

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Helvetica Neue',
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontFamily: 'Helvetica Neue',
            fontWeight: FontWeight.normal,
            fontSize: 15,
          ),
          headlineLarge: TextStyle(
            fontFamily: 'Helvetica Neue',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),

          headlineSmall: TextStyle(
            fontFamily: 'Helvetica Neue',
            fontWeight: FontWeight.w300,
            fontSize: 15,
          ),
        ),
      ),

      home: MainScreen(), // MainScreen, BottomNavigationBar ile gelir
    );
  }
}
