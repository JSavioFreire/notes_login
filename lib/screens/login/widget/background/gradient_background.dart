import 'package:flutter/material.dart';
import 'package:notes_login/theme/theme_colors.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            ThemeColors.myRed,
            ThemeColors.myRedGradient,
          ],
        ),
      ),
    );
  }
}
