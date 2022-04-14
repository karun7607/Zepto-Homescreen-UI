import 'package:flutter/material.dart';

class palette {
  static const Color zeptoAppBarclr = Color(0xff46036C);
  static const Color iconColor = Color(0xffFE3368);
  static const Color saffold = Color(0xFF0F2F5);
  static const Color bacg = Color.fromRGBO(70, 3, 108, 0.1);
}

class Palette1 {
  static const MaterialColor kToDark = const MaterialColor(
    0xff46036C, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff3f0361), //10%
      100: const Color(0xff380256), //20%
      200: const Color(0xff31024c), //30%
      300: const Color(0xff2a0241), //40%
      400: const Color(0xff230236), //50%
      500: const Color(0xff1c012b), //60%
      600: const Color(0xff150120), //70%
      700: const Color(0xff0e0116), //80%
      800: const Color(0xff07000b), //90%
      900: const Color(0xff000000), //100%
    },
  );
}
