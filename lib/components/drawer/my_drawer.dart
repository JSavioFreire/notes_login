import 'package:flutter/material.dart';
import 'package:notes_login/components/drawer/widget/logout_button.dart';
import 'package:notes_login/provider/auth/auth_provider.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class MyDrawer extends Drawer {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: ThemeColors.color2,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 50, 8, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  RichText(
                      text: TextSpan(
                          text: 'Olá ',
                          style: const TextStyle(
                              fontSize: 20, color: ThemeColors.color4),
                          children: [
                        TextSpan(
                            text: (context)
                                .read<AuthProvider>()
                                .users!
                                .displayName
                                .toString(),
                            style: const TextStyle(fontWeight: FontWeight.w600))
                      ]))
                ],
              ),
              const LogoutButton()
            ],
          ),
        ));
  }
}
