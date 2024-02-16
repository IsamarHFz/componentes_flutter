import 'package:flutter/material.dart';
import 'package:practica3/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 230, 171, 222),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(245, 118, 21, 167)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'sans-serif',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 3, 3, 3),
          ),
          bodySmall: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 3, 3, 3),
          ), 
        ),
      ),
    );
  }
}