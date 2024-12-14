// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static final shared = AppTypography._();

  AppTypography._();

  // Display
  TextStyle display_display1(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 64,
        fontWeight: FontWeight.w700,
        height: 1.2,
      ),
    );
  }

  TextStyle display_display2(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 40,
        fontWeight: FontWeight.w700,
        height: 1.2,
      ),
    );
  }

  // Heading
  TextStyle heading_heading1(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 1.2,
      ),
    );
  }

  TextStyle heading_heading2(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 1.2,
      ),
    );
  }

  TextStyle heading_heading3(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 1.2,
      ),
    );
  }

  TextStyle heading_heading4(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: 1.2,
      ),
    );
  }

  TextStyle heading_heading5(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: 1.2,
      ),
    );
  }

  TextStyle heading_heading6(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        height: 1.2,
      ),
    );
  }

  // Paragraph
  TextStyle paragraph_lg(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        height: 1.35,
      ),
    );
  }

  TextStyle paragraph_md(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.4,
      ),
    );
  }

  TextStyle paragraph_sm(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }

  TextStyle paragraph_xs(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }

  // Label
  TextStyle label_lg_semiBold(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.0,
      ),
    );
  }

  TextStyle label_lg_regular(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        height: 1.0,
      ),
    );
  }

  TextStyle label_md_semiBold(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.0,
      ),
    );
  }

  TextStyle label_md_regular(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.0,
      ),
    );
  }

  TextStyle label_sm_semiBold(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.0,
      ),
    );
  }

  TextStyle label_sm_regular(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.0,
      ),
    );
  }

  TextStyle label_xs_semiBold(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 1.0,
      ),
    );
  }

  TextStyle label_xs_regualr(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.0,
      ),
    );
  }
}
