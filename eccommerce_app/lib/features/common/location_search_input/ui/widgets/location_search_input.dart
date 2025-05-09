import 'package:flutter/material.dart';

class LocationSearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF63DBE2), // Başlangıç rengi: #63dbe2
            Color(0xFFA1E5D0),
          ], // Bitiş rengi: #8ee8ce]),
        ),
      ),
      child: Column(children: [buildSearchInput(), buildLocationButton()]),
    );
  }

  buildSearchInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
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
      ),
    );
  }

  Widget buildLocationButton() {
    return Container(
      color: Color.fromRGBO(255, 255, 255, 0.3),
      width: double.infinity, // Tüm satırı kaplar
      alignment: Alignment.centerLeft, // İçeriği sola yaslar
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(Icons.location_on_outlined, color: Colors.black),
        label: Text("Deliver to Turkey", style: TextStyle(color: Colors.black)),
        style: TextButton.styleFrom(
          padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 8.0),
          alignment: Alignment.centerLeft, // Text + Icon sola hizalanır
        ),
      ),
    );
  }
}
