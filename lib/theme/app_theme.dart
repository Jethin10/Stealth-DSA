import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // ── Core OLED Palette ──
  static const Color pureBlack = Color(0xFF000000);
  static const Color surfaceDark = Color(0xFF111111);
  static const Color surfaceCard = Color(0xFF1A1D23);
  static const Color cardBorder = Color(0xFF2D343F);
  static const Color codeBg = Color(0xFF1E1E2E);

  // ── Accent Colors ──
  static const Color matrixGreen = Color(0xFF0DF26C);
  static const Color neonPink = Color(0xFFFF0055);
  static const Color neonCyan = Color(0xFF00E5FF);
  static const Color accentYellow = Color(0xFFFFCC00);
  static const Color successGreen = Color(0xFF10B981);
  static const Color errorRed = Color(0xFFF43F5E);

  // Legacy aliases for backward compat
  static const Color neonBlue = neonCyan;

  // ── Syntax Highlighting ──
  static const Color syntaxKeyword = Color(0xFFC678DD);
  static const Color syntaxType = Color(0xFFE5C07B);
  static const Color syntaxVariable = Color(0xFFE06C75);
  static const Color syntaxNumber = Color(0xFFD19A66);
  static const Color syntaxComment = Color(0xFF5C6370);
  static const Color syntaxOperator = Color(0xFF56B6C2);
  static const Color syntaxString = Color(0xFF98C379);

  // ── Theme Data ──
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: pureBlack,
      primaryColor: matrixGreen,
      colorScheme: const ColorScheme.dark(
        primary: matrixGreen,
        secondary: neonPink,
        tertiary: neonCyan,
        surface: pureBlack,
        error: errorRed,
      ),
      textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: surfaceDark,
        indicatorColor: matrixGreen.withValues(alpha: 0.15),
        surfaceTintColor: Colors.transparent,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: matrixGreen,
        foregroundColor: pureBlack,
      ),
    );
  }

  // ── Text Styles ──
  static TextStyle get codeTextStyle {
    return GoogleFonts.jetBrainsMono(color: matrixGreen, fontSize: 14);
  }

  static TextStyle get headingStyle {
    return GoogleFonts.inter(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get labelStyle {
    return GoogleFonts.jetBrainsMono(
      color: Colors.white54,
      fontSize: 10,
      fontWeight: FontWeight.bold,
      letterSpacing: 2.0,
    );
  }

  static TextStyle get serifStyle {
    return GoogleFonts.sourceSerif4(
      color: Colors.black87,
      fontSize: 13,
      height: 1.6,
    );
  }

  // ── Decorations ──

  /// Frosted glass panel (dark)
  static BoxDecoration glassPanel({
    double opacity = 0.6,
    double borderOpacity = 0.08,
    double radius = 12,
  }) {
    return BoxDecoration(
      color: surfaceCard.withValues(alpha: opacity),
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: Colors.white.withValues(alpha: borderOpacity)),
    );
  }

  /// Glass panel with BackdropFilter wrapper (use as child of ClipRRect)
  static ImageFilter get glassBlur => ImageFilter.blur(sigmaX: 12, sigmaY: 12);

  /// Neon glow box shadow for primary (Matrix Green)
  static List<BoxShadow> neonGlow({
    Color color = matrixGreen,
    double intensity = 0.4,
  }) {
    return [
      BoxShadow(
        color: color.withValues(alpha: intensity),
        blurRadius: 10,
        spreadRadius: 0,
      ),
      BoxShadow(
        color: color.withValues(alpha: intensity * 0.5),
        blurRadius: 20,
        spreadRadius: 0,
      ),
    ];
  }

  /// Dashed border decoration (for drop zones)
  static BoxDecoration dashedZone({
    Color color = cardBorder,
    double radius = 8,
  }) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(
        color: color,
        width: 1.5,
        // Flutter doesn't support dashed borders natively,
        // so we use a dotted appearance via color opacity
      ),
      color: Colors.white.withValues(alpha: 0.02),
    );
  }

  /// Active drop zone (when dragging over)
  static BoxDecoration dashedZoneActive({double radius = 8}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: matrixGreen.withValues(alpha: 0.6), width: 2),
      color: matrixGreen.withValues(alpha: 0.1),
    );
  }

  /// Glass chip (for draggable code blocks)
  static BoxDecoration glassChip({bool isDragging = false}) {
    return BoxDecoration(
      color: isDragging
          ? matrixGreen.withValues(alpha: 0.25)
          : matrixGreen.withValues(alpha: 0.12),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: isDragging
            ? matrixGreen.withValues(alpha: 0.6)
            : matrixGreen.withValues(alpha: 0.3),
      ),
      boxShadow: isDragging ? neonGlow(intensity: 0.3) : [],
    );
  }

  /// Card with subtle border
  static BoxDecoration cardDecoration({
    Color? borderColor,
    double radius = 12,
  }) {
    return BoxDecoration(
      color: surfaceCard,
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: borderColor ?? cardBorder),
    );
  }
}
