import 'package:eccommerce_app/features/main/ui/widgets/topbar/widgets/topbar.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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

            title: Text('Shop By Department'),
            children: [
              ListTile(title: Text('dcd')),
              ListTile(title: Text('cdcd')),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: EdgeInsets.only(
            top: 12.0,
            bottom: 12.0,
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
                Text('Customer Service'),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: EdgeInsets.only(
            top: 12.0,
            bottom: 12.0,
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
              children: [Text('Sign in'), Icon(Icons.keyboard_arrow_down)],
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
    );
  }
}
