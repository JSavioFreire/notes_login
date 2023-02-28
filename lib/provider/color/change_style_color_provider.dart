import 'package:flutter/material.dart';

class ChangeStyleColorProvider extends ChangeNotifier {
  int styleColor = 0;
  List<String> stylePostItColor = [
    'initial',
    'light',
    'dark',
    'eletric',
    'strong',
    'amazing'
  ];
}
