import 'package:eccommerce_app/features/home/u%C4%B1/screens/home_screen.dart';
import 'package:eccommerce_app/features/notification/u%C4%B1/screens/notification_screen.dart';
import 'package:eccommerce_app/features/product/u%C4%B1/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State {
  int _selectedPageIndex = 0;
  //page boddy
  List<Widget> _pages = [HomeScreen(), NotificationScreen(), ProfileScreen()];

  // BottomNavigationBar için sekme tıklama fonksiyonu
  void _onNavigationItemTapped(int pageIndex) {
    setState(() {
      _selectedPageIndex = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _onNavigationItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor:
            Colors.blueAccent, // Amazon'da seçili ikon daha belirgin olur
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}
