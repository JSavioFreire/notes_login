import 'package:flutter/material.dart';
import 'package:notes_login/provider/auth/auth_provider.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class HelloName extends StatelessWidget {
  const HelloName({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: 'Olá ',
            style: const TextStyle(fontSize: 20, color: ThemeColors.color4),
            children: [
          TextSpan(
              text:
                  (context).read<AuthProvider>().users!.displayName.toString(),
              style: const TextStyle(fontWeight: FontWeight.w600))
        ]));
  }
}
