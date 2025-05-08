import 'dart:async';
import 'package:flutter/material.dart';

class FadeSlider extends StatefulWidget {
  @override
  _FadeSliderState createState() => _FadeSliderState();
}

final List<String> _images = ["0.jpeg", "1.jpeg", "2.jpeg", "3.jpeg"];

class _FadeSliderState extends State<FadeSlider> {
  int _currentPage = 0;
  final PageController _pageController = PageController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 3), (_) {
      if (_pageController.hasClients) {
        int nextPage = (_currentPage + 1) % _images.length;
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: _currentPage == index ? 1.0 : 0.0,
            child: Image.asset(
              'assets/images/${_images[index]}',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          );
        },
      ),
    );
  }
}
