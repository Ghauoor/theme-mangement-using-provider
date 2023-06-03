import 'package:flutter/material.dart';

//theme data for each theme
ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  cardTheme: const CardTheme(surfaceTintColor: Color(0xff101820)),
  fontFamily: "Lato",
  iconTheme: const IconThemeData(color: Color(0xffcfcfcf)),
  appBarTheme: AppBarTheme(
      surfaceTintColor: Colors.black,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle:
          const TextTheme(headlineMedium: TextStyle(color: Colors.white))
              .headlineMedium),
);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: const Color(0xff29b6f6),
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  cardTheme: const CardTheme(surfaceTintColor: Colors.white),
  fontFamily: "Lato",
  appBarTheme: AppBarTheme(
      surfaceTintColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle:
          const TextTheme(headlineMedium: TextStyle(color: Colors.black))
              .headlineMedium),
);
