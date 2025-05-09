import 'package:eccommerce_app/features/main/provider/page_index_provider.dart';
import 'package:eccommerce_app/features/main/ui/widgets/topbar/widgets/location_input.dart';
import 'package:eccommerce_app/features/main/ui/widgets/topbar/widgets/profile.dart';
import 'package:eccommerce_app/features/main/ui/widgets/topbar/widgets/search_input.dart';
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
            Color(0xFF63DBE2), // Başlangıç rengi: #63dbe2
            Color(0xFFA1E5D0),
          ], // Bitiş rengi: #8ee8ce]),
        ),
      ),
      child: Column(
        children: [
          if (selectedPageIndex == 0 ||
              selectedPageIndex == 2 ||
              selectedPageIndex == 3)
            SearchInput(),
          if (selectedPageIndex == 1) Profile(),

          if (selectedPageIndex == 0 || selectedPageIndex == 2) LocationInput(),
        ],
      ),
    );
  }
}
