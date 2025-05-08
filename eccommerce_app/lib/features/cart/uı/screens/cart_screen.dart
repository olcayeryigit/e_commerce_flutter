import 'package:eccommerce_app/features/common/location_search_input/ui/widgets/location_search_input.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [LocationSearchInput(), Text("Cart Screen")]);
  }
}
