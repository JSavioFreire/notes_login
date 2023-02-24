import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_login/theme/theme_colors.dart';

ThemeData myTheme = ThemeData(
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      bodyMedium: GoogleFonts.poppins(textStyle: const TextStyle()),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: ThemeColors.color1),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.white),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: ThemeColors.color1));
