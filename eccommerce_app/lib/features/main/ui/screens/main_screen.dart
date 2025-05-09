import 'package:eccommerce_app/features/main/state/_pages.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../provider/page_index_provider.dart';

class MainScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPageIndex = ref.watch(pageIndexProvider);
    //Bu, sağlayıcının (provider'ın) tuttuğu int değeri (şu anki aktif sekme index'ini) okur.
    //Dinler, yani değiştiğinde UI yeniden çizilir.
    //ref.read(provider.notifier).state değiştiğinde watch(provider) tetiklenerek ui tekrar çizilir
    return Scaffold(
      body: pages[selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPageIndex,
        onTap: (index) {
          ref.read(pageIndexProvider.notifier).state = index;
        },
        //	Sadece okur, değişiklikleri takip etmez. Genelde onTap, onPressed gibi event'lerde kullanılır.
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu_outlined), label: ''),
        ],
      ),
    );
  }
}
