import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainFonts {
  static TextStyle headline1 = GoogleFonts.anton(
    color: const Color.fromARGB(255, 246, 239, 239),
    fontSize: 50,
  );

  static TextStyle headline2 = GoogleFonts.anton(
    color: const Color.fromARGB(255, 234, 227, 227),
    fontSize: 30,
  );

  static TextStyle questionFont1 = GoogleFonts.anton(
    color: const Color.fromARGB(255, 255, 204, 0),
    fontSize: 25,
  );

  static TextStyle answerFont = GoogleFonts.notoSans(
    color: const Color.fromARGB(255, 93, 44, 180),
    fontSize: 20,
  );
}