import 'package:flutter/material.dart';

ThemeData style() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Color.fromRGBO(156, 203, 251, 1),
    colorScheme: ColorScheme.dark(),

    // Botão flutuante
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color.fromRGBO(28, 32, 36, 1),
    )
  );
}

