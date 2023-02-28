import 'package:flutter/material.dart';

class ThemeColors {
  static const Color color1 = Color.fromRGBO(179, 129, 132, 1);
  static const Color color2 = Color.fromRGBO(247, 228, 190, 1);
  static const Color color2Light = Color.fromRGBO(249, 236, 210, 1);
  static const Color color2Opacity = Color.fromRGBO(247, 228, 190, 0.4);
  static const Color color3 = Color.fromRGBO(240, 180, 158, 1);
  static const Color color3Opacity = Color.fromRGBO(240, 180, 158, 0.4);
  static const Color color4 = Color.fromRGBO(65, 62, 72, 1);
  static const Color color4Opacity = Color.fromRGBO(65, 62, 72, 0.4);

  static Map<String, List> allCardColors = {
    'initial': [
      const Color.fromRGBO(249, 236, 210, 1),
      const Color.fromRGBO(229, 185, 250, 1),
      const Color.fromRGBO(222, 248, 250, 1),
      const Color.fromRGBO(250, 197, 228, 1),
      const Color.fromRGBO(189, 250, 185, 1)
    ],
    'light': [
      const Color.fromRGBO(145, 56, 0, 1),
      const Color.fromRGBO(22, 15, 50, 1),
      const Color.fromRGBO(222, 248, 50, 1),
      const Color.fromRGBO(250, 17, 228, 1),
      const Color.fromRGBO(19, 250, 185, 1)
    ],
    'dark': [],
    'eletric': [],
    'strong': [],
    'amazing': []
  };
}
