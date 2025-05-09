import 'package:eccommerce_app/features/main/provider/page_index_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomNavWidget extends HookConsumerWidget {
  final IconData icon;
  final int index;

  CustomNavWidget({required this.icon, required this.index});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPageIndex = ref.watch(pageIndexProvider);
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none, // Stack dışına taşmaya izin verir

          children: [
            if (selectedPageIndex == index)
              Positioned(
                top: -20,
                child: Container(
                  width: 50,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 128, 145, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            Icon(icon),
          ],
        ),
      ],
    );
  }
}
