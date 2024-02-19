import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Constante del color primario
  static const primaryColor = Color.fromARGB(255, 247, 79, 135);
  // Constante del color secundario
  static const secondaryColor = Color.fromARGB(255, 3, 3, 3);
  // Constante del color de fondo
  static const backColor = Color.fromARGB(255, 230, 171, 222);


  // Definición del tema de color y estilo de la app
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
        appBarTheme: const AppBarTheme(color: primaryColor),
        textTheme: TextTheme(
          // Títulos de primer nivel
          headlineLarge: GoogleFonts.acme(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
          // Fuennte para textos muy pequeños
          bodySmall: GoogleFonts.pacifico(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: secondaryColor,
          ), 
        ),
  );
}