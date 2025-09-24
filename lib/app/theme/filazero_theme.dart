import 'package:flutter/material.dart';

class FilaZeroTheme {
  static const Color primary = Color.fromARGB(255, 66, 157, 255);
  static const Color second = Colors.white;

  static ElevatedButtonThemeData elevatedButtonStyle = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      backgroundColor: primary,
      foregroundColor: second,
    ),
  );

  static const _inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide.none,
  );
  static InputDecorationTheme inputStyle = InputDecorationTheme(
    filled: true,
    fillColor: Color(0xffEDEDED),
    border: _inputBorder,
    disabledBorder: _inputBorder,
    enabledBorder: _inputBorder,
    focusedBorder: _inputBorder,
  );
  static final theme = ThemeData(
    elevatedButtonTheme: elevatedButtonStyle,
    inputDecorationTheme: inputStyle,
  );
}
