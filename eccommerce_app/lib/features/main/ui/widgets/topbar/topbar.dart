import 'package:eccommerce_app/features/main/provider/page_index_provider.dart';
import 'package:eccommerce_app/features/main/ui/widgets/topbar/location_input.dart';
import 'package:eccommerce_app/features/main/ui/widgets/topbar/profile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopBar extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPageIndex = ref.watch(pageIndexProvider);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFb6e8ef), // Başlangıç rengi: #63dbe2
            Color(0xFFc8f1e1),
          ], // Bitiş rengi: #8ee8ce]),
        ),
      ),
      child: Column(
        children: [
          if (selectedPageIndex == 1) Profile(),

          if (selectedPageIndex == 0 || selectedPageIndex == 2) LocationInput(),
        ],
      ),
    );
  }
}
