import 'package:flutter/material.dart';
import 'package:notes_login/provider/functions/functions_provider.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class TextButtonChangeScreen extends StatelessWidget {
  final String text;
  const TextButtonChangeScreen({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    FunctionsProvider provider = Provider.of<FunctionsProvider>(context);

    return TextButton(
        onPressed: () {
          provider.changeLoginToRegister();
        },
        child: Text(
          text,
          style: const TextStyle(color: ThemeColors.color4),
        ));
  }
}
