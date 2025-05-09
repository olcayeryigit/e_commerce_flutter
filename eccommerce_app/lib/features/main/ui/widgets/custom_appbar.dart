import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6, bottom: 6),

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF84d9e3), // Başlangıç rengi: #63dbe2
            Color(0xFFa5e6ce),
          ], // Bitiş rengi: #8ee8ce]),
        ),
      ),
      child: AppBar(
        backgroundColor: Colors.transparent, // Şeffaf arkaplan
        elevation: 0,

        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Search or ask a question",
            filled:
                true, // Arka plan renginin uygulanabilmesi için 'true' olmalı
            fillColor: Colors.white, // Arka plan rengini buradan veriyoruz,
            suffixIcon: Icon(Icons.center_focus_weak),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // AppBar yüksekliği
}
