import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static final TextStyle headlineLarge = GoogleFonts.dynaPuff(
    fontSize: 50,
    fontWeight: FontWeight.bold,
    height: 1.2,
  );
  static final TextStyle bodyLarge = GoogleFonts.nunito(
    fontSize: 20, 
  );
   static final TextStyle bodyMedium = GoogleFonts.nunito(
     fontSize: 18,
   fontWeight: FontWeight.w600,
  );
}
