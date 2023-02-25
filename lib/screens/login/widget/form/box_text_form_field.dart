import 'package:flutter/material.dart';
import 'package:notes_login/provider/functions/functions_provider.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class BoxTextFormField extends StatelessWidget {
  final Widget inside;
  final IconData icon;
  final bool? isPassword;
  const BoxTextFormField(
      {super.key, required this.inside, required this.icon, this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      decoration: BoxDecoration(
          color: ThemeColors.color4Opacity,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(icon),
              ),
              Expanded(child: inside)
            ]),
          ),
          if (isPassword == true)
            IconButton(
                onPressed: () {
                  (context).read<FunctionsProvider>().changeVisibility();
                },
                icon: Icon((context).read<FunctionsProvider>().icon))
        ],
      ),
    );
  }
}
