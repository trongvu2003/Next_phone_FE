import 'package:flutter/material.dart';

class AppColors {
  // -- Light Mode --
  static const lightBackground = Color(0xFFF5F5F5);
  static const lightSurface    = Colors.white;
  static const lightText       = Color(0xFF1A1A2E);
  static const lightSubtext    = Color(0xFF888888);

  // -- Dark Mode --
  static const darkBackground  = Color(0xFF0F0C29);
  static const darkSurface     = Color(0xFF1A1A40);
  static const darkText        = Colors.white;
  static const darkSubtext     = Color(0xFF8F8FAA);

  // -- Brand (dùng chung cả 2 mode) --
  static const primary         = Color(0xFF6C63FF);
  static const primaryLight    = Color(0xFF4FACFE);
  static const divider         = Color(0x26FFFFFF);

  static const Gradient primaryGradient = LinearGradient(
    colors: [primary, primaryLight],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const Gradient darkBgGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [darkBackground, darkSurface, Color(0xFF24243E)],
  );

  static const Gradient lightBgGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFEEEEFF), Color(0xFFF5F5F5), Color(0xFFE8E8FF)],
  );
}