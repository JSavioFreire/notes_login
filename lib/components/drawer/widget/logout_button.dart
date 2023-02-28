import 'package:flutter/material.dart';
import 'package:notes_login/provider/auth/auth_provider.dart';
import 'package:notes_login/provider/color/change_style_color_provider.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeStyleColorProvider colorProvider =
        Provider.of<ChangeStyleColorProvider>(context);
        
    return SizedBox(
      width: 150,
      height: 60,
      child: ElevatedButton(
          onPressed: () => (context).read<AuthProvider>().logout(),
          style: ElevatedButton.styleFrom(
            backgroundColor: ThemeColors.allCardColors[
                colorProvider.stylePostItColor[colorProvider.styleColor]]![4],
          ),
          child: const Text(
            'Sair',
            style: TextStyle(fontSize: 17),
          )),
    );
  }
}
