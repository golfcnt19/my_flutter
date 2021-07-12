import 'package:flutter/material.dart';

class BackgroundTheme {
  const BackgroundTheme();

  static const Color gradientStart = const Color(0xff1488cc);
  static const Color gradientEnd = const Color(0xff2b32b2);

  static const gradient = const LinearGradient(
    colors: [
      gradientStart,
      gradientEnd,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 1.0],
  );
}
