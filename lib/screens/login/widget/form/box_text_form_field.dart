import 'package:flutter/material.dart';
import 'package:notes_login/theme/theme_colors.dart';

class BoxTextFormField extends StatelessWidget {
  final Widget inside;
  const BoxTextFormField({super.key, required this.inside});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 50,
      decoration: BoxDecoration(
          color: ThemeColors.color4Opacity,
          borderRadius: BorderRadius.circular(10)),
      child: inside,
    );
  }
}
