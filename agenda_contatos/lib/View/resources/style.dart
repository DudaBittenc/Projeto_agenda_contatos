import 'package:flutter/material.dart';

ThemeData style() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Color.fromRGBO(156, 203, 251, 1),
    colorScheme: ColorScheme.dark(),
    /*textSelectionTheme: TextSelectionThemeData(
      cursorColor: Color.fromRGBO(193, 193, 193, 1)*/

    // Botão flutuante
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color.fromRGBO(28, 32, 36, 1),
    )
  );
}

