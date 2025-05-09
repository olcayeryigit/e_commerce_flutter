import 'package:eccommerce_app/features/main/state/_pages.dart';
import 'package:eccommerce_app/features/main/ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../provider/page_index_provider.dart';
import '../widgets/custom_nav_widget.dart';

class MainScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPageIndex = ref.watch(pageIndexProvider);
    //Bu, sağlayıcının (provider'ın) tuttuğu int değeri (şu anki aktif sekme index'ini) okur.
    //Dinler, yani değiştiğinde UI yeniden çizilir.
    //ref.read(provider.notifier).state değiştiğinde watch(provider) tetiklenerek ui tekrar çizilir
    return Scaffold(
      appBar: CustomAppbar(),
      body: pages[selectedPageIndex],
      //Bottomnavigationbarı containera sarmalayıp gölge verdim
      bottomNavigationBar: Container(
        clipBehavior:
            Clip.hardEdge, //taşmayı önleyelim (icon üserindeki taşmaları önlemek için yaptım)

        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromARGB(255, 201, 201, 201),
              width: 1,
            ),
            bottom: BorderSide(
              color: Color.fromARGB(255, 202, 202, 202),
              width: 1,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, -2), // Yukarıdan gölge
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: selectedPageIndex,
          onTap: (index) {
            ref.read(pageIndexProvider.notifier).state = index;
          },
          //	Sadece okur, değişiklikleri takip etmez. Genelde onTap, onPressed gibi event'lerde kullanılır.
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 20,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: const Color.fromRGBO(0, 131, 148, 1),
          unselectedItemColor: Colors.black,

          //üst çizgi yapabilmek için BottomNavigationBarItem ın iconunu özelleştirelim, icon yerine kendimiz widget yapabiliyoruz
          items: [
            BottomNavigationBarItem(
              icon: CustomNavWidget(icon: Icons.home_outlined, index: 0),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CustomNavWidget(icon: Icons.person_outlined, index: 1),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CustomNavWidget(
                icon: Icons.shopping_cart_outlined,
                index: 2,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CustomNavWidget(icon: Icons.menu_outlined, index: 3),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
