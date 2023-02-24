import 'package:flutter/material.dart';
import 'package:notes_login/theme/theme_colors.dart';

class CircularDesignBottom extends StatelessWidget {
  const CircularDesignBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -100,
      left: -100,
      child: Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            color: ThemeColors.color2Opacity),
      ),
    );
  }
}
