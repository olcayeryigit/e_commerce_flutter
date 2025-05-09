import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Sol tarafta logo
        Image.asset('assets/images/logo.png', height: 50, fit: BoxFit.contain),

        Spacer(), // Boşluk bırakır ve ikonları sağa iter
        // Sağ tarafta 3 ikon
        IconButton(icon: Icon(Icons.settings_outlined), onPressed: () {}),
        IconButton(icon: Icon(Icons.notifications_outlined), onPressed: () {}),
        IconButton(icon: Icon(Icons.search_outlined), onPressed: () {}),
      ],
    );
  }
}
