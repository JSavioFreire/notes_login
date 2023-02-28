import 'package:flutter/material.dart';

class ThemeColors {
  static const Color color1 = Color.fromRGBO(179, 129, 132, 1);
  static const Color color2 = Color.fromRGBO(247, 228, 190, 1);
  static const Color color2Opacity = Color.fromRGBO(247, 228, 190, 0.4);
  static const Color color3 = Color.fromRGBO(240, 180, 158, 1);
  static const Color color3Opacity = Color.fromRGBO(240, 180, 158, 0.4);
  static const Color color4 = Color.fromRGBO(65, 62, 72, 1);
  static const Color color4Opacity = Color.fromRGBO(65, 62, 72, 0.4);

  static Map<String, List> allCardColors = {
    'initial': [
      const Color.fromRGBO(249, 236, 210, 1),
      const Color.fromRGBO(222, 248, 250, 1),
      const Color.fromRGBO(250, 197, 228, 1),
      const Color.fromRGBO(189, 250, 185, 1),
      const Color.fromRGBO(229, 185, 250, 1),
    ],
    'red': [
      const Color.fromRGBO(225, 237, 209, 1),
      const Color.fromRGBO(170, 182, 155, 1),
      const Color.fromRGBO(158, 144, 110, 1),
      const Color.fromRGBO(180, 121, 65, 1),
      const Color.fromRGBO(207, 57, 29, 1)
    ],
    'orange': [
      const Color.fromRGBO(203, 220, 223, 1),
      const Color.fromRGBO(174, 206, 210, 1),
      const Color.fromRGBO(209, 184, 160, 1),
      const Color.fromRGBO(255, 193, 61, 1),
      const Color.fromRGBO(255, 136, 48, 1)
    ],
    'eletric': [
      const Color.fromRGBO(201, 218, 164, 1),
      const Color.fromRGBO(138, 203, 181, 1),
      const Color.fromRGBO(255, 231, 146, 1),
      const Color.fromRGBO(218, 143, 114, 1),
      const Color.fromRGBO(230, 84, 107, 1)
    ],
    'strong': [
      const Color.fromRGBO(255, 254, 200, 1),
      const Color.fromRGBO(216, 253, 148, 1),
      const Color.fromRGBO(189, 237, 126, 1),
      const Color.fromRGBO(254, 157, 151, 1),
      const Color.fromRGBO(254, 73, 95, 1)
    ],
    'amazing': [
      const Color.fromRGBO(255, 255, 255, 1),
      const Color.fromRGBO(204, 204, 204, 1),
      const Color.fromRGBO(153, 153, 153, 1),
      const Color.fromRGBO(130, 130, 130, 1),
      const Color.fromRGBO(171, 219, 37, 1)
    ]
  };
}
