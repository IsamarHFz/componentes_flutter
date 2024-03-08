import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Constante del color primario
  static const primaryColor = Color.fromARGB(255, 247, 79, 135);
  // Constante del color secundario
  static const secondaryColor = Color.fromARGB(255, 3, 3, 3);
  // Constante del color de fondo
  static const backColor = Color.fromARGB(255, 230, 171, 222);
  // constante de color de botonesy otros widgets
  static const widgetsColor = Color.fromARGB(255, 242, 245, 241);
  // constante de color de botones y widgets deshabilitados
  static const disabledWidgetColor = Color.fromARGB(198, 250, 247, 252);

  // Definición del tema de color y estilo de la app
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // colores del tema claro
    scaffoldBackgroundColor: backColor,
        appBarTheme: AppBarTheme(
          color: primaryColor,
          titleTextStyle: GoogleFonts.lato(
            color: backColor,
            fontSize: 28.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: primaryColor,
          size: 35.0
        ),

        // estilo de botones
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widgetsColor),
            foregroundColor: MaterialStateProperty.all(primaryColor),
            textStyle: MaterialStateProperty.all(
              GoogleFonts.pacifico(
                fontSize: 25.0
              ),
            ),
          )
        ),

        // estilo de los textos
        textTheme: TextTheme(
          // Títulos de primer nivel
          headlineLarge: GoogleFonts.acme(
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
            color: primaryColor,
            decoration: TextDecoration.underline,
            decorationColor: primaryColor, 
            decorationStyle: TextDecorationStyle.double,
            decorationThickness: 1.5,
          ),
          
          headlineMedium: GoogleFonts.alexandria(
            fontSize: 20.5,
            fontWeight: FontWeight.w700,
            color: secondaryColor,

          ),

          // Fuennte para textos muy pequeños
          bodySmall: GoogleFonts.pacifico(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: secondaryColor,
            fontStyle: FontStyle.italic
          ), 
        ),
  );
}