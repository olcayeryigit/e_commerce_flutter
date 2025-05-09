import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class BuildStarIcons extends StatelessWidget {
  final int activeStarCount;

  BuildStarIcons({required this.activeStarCount});
  @override
  Widget build(BuildContext context) {
    final int totalCount = 5;
    final int passiveCount = totalCount - activeStarCount;

    return Row(
      children: [activeIcons(activeStarCount), passiveIcons(passiveCount)],
    );
  }

  activeIcons(int activeStarCount) {
    return Row(
      children: List.generate(
        activeStarCount,
        (index) => Icon(Icons.star, color: Color.fromRGBO(224, 118, 31, 1)),
      ),
    );
  }

  passiveIcons(int passiveCount) {
    return Row(
      children: List.generate(
        passiveCount,
        (index) => Icon(
          Icons.star_border_outlined,
          color: Color.fromRGBO(224, 118, 31, 1),
        ),
      ),
    );
  }
}
