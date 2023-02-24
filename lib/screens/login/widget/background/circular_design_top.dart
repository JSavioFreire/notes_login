import 'package:flutter/material.dart';
import 'package:notes_login/theme/theme_colors.dart';

class CircularDesignTop extends StatelessWidget {
  const CircularDesignTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -20,
      right: -50,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(75),
            color: ThemeColors.myRedGradientOpacity),
      ),
    );
  }
}
