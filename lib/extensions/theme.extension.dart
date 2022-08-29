import 'package:flutter/material.dart';

class Palettes extends MaterialColor {
  const Palettes(int primary, Map<int, Color> swatch) : super(primary, swatch);

  static const int _grabValue = 0xFF58BC6B;
  static const MaterialColor primary = MaterialColor(
    _grabValue,
    <int, Color>{
      50: Color(0xFFDFFAE0),
      100: Color(0xFFC4EEC9),
      200: Color(0xFFA9E1B1),
      300: Color(0xFF8ED59A),
      400: Color(0xFF73C882),
      500: Color(_grabValue),
      600: Color(0xFF4CA561),
      700: Color(0xFF418F56),
      800: Color(0xFF35784C),
      900: Color(0xFF296141),
    },
  );
}

class ThemeApp {
  static ThemeData get themeApp {
    return ThemeData(
      fontFamily: 'Sanomat',
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Palettes.primary,
      appBarTheme: _appBarTheme,
    );
  }

  static AppBarTheme get _appBarTheme {
    return const AppBarTheme(
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
