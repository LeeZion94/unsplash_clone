// ignore_for_file: non_constant_identifier_names
import 'dart:ui';

class AppColors {
  AppColors._();

  // BrandPalettes
  static Color get brand10 => const Color(0xFFF6F5FF);
  static Color get brand20 => const Color(0xFFF0EDFF);
  static Color get brand30 => const Color(0xFFDBD4FF);
  static Color get brand40 => const Color(0xFFB4A6FF);
  static Color get brand50 => const Color(0xFF907AFF);
  static Color get brand60 => const Color(0xFF7257FF);
  static Color get brand70 => const Color(0xFF5336E2);
  static Color get brand80 => const Color(0xFF35228F);
  static Color get brand90 => const Color(0xFF291F61);
  static Color get brand100 => const Color(0xFF130D33);

  // Foreground
  static Color get fg_base => const Color(0xFF131214);
  static Color get fg_muted => const Color(0xFF6E7375);
  static Color get fg_subtle => const Color(0xFF898D8F);
  static Color get fg_on_contrast => const Color(0xFFFFFFFF);
  static Color get fg_disabled => const Color(0xFF898D8F);
  static Color get fg_link => const Color(0xFF7257FF);
  static Color get fg_success => const Color(0xFF008557);
  static Color get fg_warning => const Color(0xFFB26205);
  static Color get fg_error => const Color(0xFFDB340B);
  static Color get fg_info => const Color(0xFF0A69FA);
  static Color get fg_danger => const Color(0xFFDB340B);
  static Color get fg_static_light => const Color(0xFFFFFFFF);
  static Color get fg_static_dark => const Color(0xFF131214);

  // Background
  static Color get bg_canvas => const Color(0xFFFFFFFF);
  static Color get bg_subtle => const Color(0xFFF4F6F7);
  static Color get bg_muted => const Color(0xFFE6E9EB);
  static Color get bg_surface => const Color(0xFFFFFFFF);
  static Color get bg_contrast => const Color(0xFF131214);
  static Color get bg_interactive_primary => const Color(0xFFE6E9EB);
  static Color get bg_interactive_secondary => const Color(0xFFDADDDE);
  static Color get bg_interactive_tertiary => const Color(0xFFC1C4C6);
  static Color get bg_disabled => const Color(0xFFDADDDE);
  static Color get bg_success => const Color(0xFFE8FAF0);
  static Color get bg_success_contrast => const Color(0xFF008557);
  static Color get bg_error => const Color(0xFFFFF3F0);
  static Color get bg_error_contrast => const Color(0xFFDB340B);
  static Color get bg_warning => const Color(0xFFFFF9E6);
  static Color get bg_warning_contrast => const Color(0xFFFFD84D);
  static Color get bg_info => const Color(0xFFF2F7FF);
  static Color get bg_info_contrast => const Color(0xFF0A69FA);
  static Color get bg_notification => const Color(0xFFDB340B);
  static Color get bg_overlay => const Color.fromRGBO(0, 0, 0, 0.7);
  static Color get bg_danger_primary => const Color(0xFFFF5226);
  static Color get bg_danger_secondary => const Color(0xFFDB340B);
  static Color get bg_danger_tertiary => const Color(0xFFAD1D00);

  // Border
  static Color get border_subtle => const Color(0xFFE8EBEB);
  static Color get border_muted => const Color(0xFFDADDDE);
  static Color get border_interactive_primary => const Color(0xFFDADDDE);
  static Color get border_contrast => const Color(0xFF131214);
  static Color get border_disabled => const Color(0xFFC1C4C6);
  static Color get border_error => const Color(0xFFFF9175);
  static Color get border_shape_on_white => const Color(0x33CFCACA);

  // Accent
  static Color get accent_on_accent => const Color(0xFFFFFFFF);
  static Color get accent_subtle => const Color(0xFFF0EDFF);
  static Color get accent_muted => const Color(0xFFDBD4FF);
  static Color get accent_dim => const Color(0xFFB4A6FF);
  static Color get accent_moderate => const Color(0xFF7257FF);
  static Color get accent_bold => const Color(0xFF5336E2);
  static Color get accent_strong => const Color(0xFF34228F);
  static Color get accent_intense => const Color(0xFF291F61);
}
