import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static final themeStyle = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Color(0xffFF6347),
  );
  static final splashStyle = GoogleFonts.poppins(
    fontSize: 40,
    fontWeight: FontWeight.w900,
    color: Colors.black,
  );
}
