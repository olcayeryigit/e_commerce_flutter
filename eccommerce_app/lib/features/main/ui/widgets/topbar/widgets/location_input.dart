import 'package:flutter/material.dart';

class LocationInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
