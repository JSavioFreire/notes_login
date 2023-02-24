import 'package:flutter/material.dart';
import 'package:notes_login/theme/theme_colors.dart';

class TitleLogin extends StatelessWidget {
  const TitleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Column(children: <Widget>[
        RichText(
          text: const TextSpan(
              text: 'N',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w700,
                color: ThemeColors.color4,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: 'otes',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                        color: ThemeColors.color4))
              ]),
        ),
        const Text(
          'Bem vindo de volta',
          style: TextStyle(color: ThemeColors.color4, fontSize: 18),
        )
      ]),
    );
  }
}
