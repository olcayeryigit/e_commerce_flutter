import 'package:flutter/material.dart';

class LocationInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black, width: 1.0)),
      ),
      width: double.infinity,
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(Icons.location_on_outlined, color: Colors.black, size: 24.0),
        label: Text(
          "Deliver to Turkey",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          alignment: Alignment.centerLeft,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // radius
          ),
        ),
      ),
    );
  }
}
