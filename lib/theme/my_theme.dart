import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_login/theme/theme_colors.dart';

ThemeData myTheme = ThemeData(
  inputDecorationTheme: const InputDecorationTheme(),
  textTheme: TextTheme(
    titleLarge: GoogleFonts.poppins(
      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    bodyMedium: GoogleFonts.poppins(textStyle: const TextStyle()),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(backgroundColor: ThemeColors.teste),
  ),
);
