import 'package:flutter/material.dart';

// ─── SIMKOS Color Palette ───────────────────────────────────────────────────
class AppColors {
  // Primary — Teal/Green (warna utama SIMKOS)
  static const Color primary50  = Color(0xFFE1F5EE);
  static const Color primary100 = Color(0xFF9FE1CB);
  static const Color primary200 = Color(0xFF5DCAA5);
  static const Color primary400 = Color(0xFF1D9E75);
  static const Color primary600 = Color(0xFF0F6E56); // ← main primary
  static const Color primary800 = Color(0xFF085041);

  // Status
  static const Color successBg   = Color(0xFFE1F5EE);
  static const Color successText = Color(0xFF085041);

  static const Color warningBg   = Color(0xFFFAEEDA);
  static const Color warningText = Color(0xFF633806);

  static const Color errorBg   = Color(0xFFFCEBEB);
  static const Color errorText = Color(0xFFA32D2D);

  // WhatsApp
  static const Color whatsapp = Color(0xFF25D366);

  // Neutral
  static const Color white      = Color(0xFFFFFFFF);
  static const Color bgPage     = Color(0xFFF5F7F6);
  static const Color bgCard     = Color(0xFFFFFFFF);
  static const Color border     = Color(0xFFE2E8E4);
  static const Color textPrimary   = Color(0xFF1A2E25);
  static const Color textSecondary = Color(0xFF6B7F75);
  static const Color textHint      = Color(0xFFAAB8B2);
}

// ─── Text Styles ────────────────────────────────────────────────────────────
class AppText {
  static const String fontFamily = 'Inter'; // fallback: default sans

  static const TextStyle h1 = TextStyle(
    fontSize: 22, fontWeight: FontWeight.w600,
    color: AppColors.textPrimary, height: 1.3,
  );
  static const TextStyle h2 = TextStyle(
    fontSize: 18, fontWeight: FontWeight.w600,
    color: AppColors.textPrimary, height: 1.3,
  );
  static const TextStyle h3 = TextStyle(
    fontSize: 15, fontWeight: FontWeight.w600,
    color: AppColors.textPrimary, height: 1.4,
  );
  static const TextStyle body = TextStyle(
    fontSize: 13, fontWeight: FontWeight.w400,
    color: AppColors.textPrimary, height: 1.5,
  );
  static const TextStyle bodyMuted = TextStyle(
    fontSize: 13, fontWeight: FontWeight.w400,
    color: AppColors.textSecondary, height: 1.5,
  );
  static const TextStyle small = TextStyle(
    fontSize: 11, fontWeight: FontWeight.w400,
    color: AppColors.textSecondary, height: 1.4,
  );
  static const TextStyle smallBold = TextStyle(
    fontSize: 11, fontWeight: FontWeight.w600,
    color: AppColors.textPrimary, height: 1.4,
  );
  static const TextStyle label = TextStyle(
    fontSize: 12, fontWeight: FontWeight.w500,
    color: AppColors.textSecondary, height: 1.4,
  );
  static const TextStyle amount = TextStyle(
    fontSize: 22, fontWeight: FontWeight.w700,
    color: AppColors.textPrimary, height: 1.2,
  );
  static const TextStyle amountHero = TextStyle(
    fontSize: 26, fontWeight: FontWeight.w700,
    color: AppColors.white, height: 1.2,
  );
}

// ─── Border Radius ───────────────────────────────────────────────────────────
class AppRadius {
  static const BorderRadius sm  = BorderRadius.all(Radius.circular(8));
  static const BorderRadius md  = BorderRadius.all(Radius.circular(12));
  static const BorderRadius lg  = BorderRadius.all(Radius.circular(16));
  static const BorderRadius xl  = BorderRadius.all(Radius.circular(20));
  static const BorderRadius pill = BorderRadius.all(Radius.circular(100));
}

// ─── Spacing ─────────────────────────────────────────────────────────────────
class AppSpacing {
  static const double xs  = 4;
  static const double sm  = 8;
  static const double md  = 12;
  static const double lg  = 16;
  static const double xl  = 20;
  static const double xxl = 28;

  static const EdgeInsets pagePadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 16);
  static const EdgeInsets cardPadding =
      EdgeInsets.symmetric(horizontal: 14, vertical: 12);
}

// ─── Shadows ─────────────────────────────────────────────────────────────────
class AppShadow {
  static List<BoxShadow> card = [
    BoxShadow(
      color: AppColors.primary600.withOpacity(0.06),
      blurRadius: 12,
      offset: const Offset(0, 4),
    ),
  ];
}

// ─── ThemeData ───────────────────────────────────────────────────────────────
class AppTheme {
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.bgPage,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary600,
      primary: AppColors.primary600,
      background: AppColors.bgPage,
    ),

    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.textPrimary,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: AppText.h3,
      iconTheme: IconThemeData(color: AppColors.textSecondary, size: 22),
    ),

    // ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary600,
        foregroundColor: AppColors.white,
        minimumSize: const Size(double.infinity, 48),
        shape: const RoundedRectangleBorder(borderRadius: AppRadius.md),
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        elevation: 0,
      ),
    ),

    // OutlinedButton
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.textPrimary,
        minimumSize: const Size(double.infinity, 48),
        shape: const RoundedRectangleBorder(borderRadius: AppRadius.md),
        side: const BorderSide(color: AppColors.border),
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    ),

    // InputDecoration
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: AppRadius.md,
        borderSide: const BorderSide(color: AppColors.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: AppRadius.md,
        borderSide: const BorderSide(color: AppColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: AppRadius.md,
        borderSide: const BorderSide(color: AppColors.primary600, width: 1.5),
      ),
      hintStyle: AppText.body.copyWith(color: AppColors.textHint),
      labelStyle: AppText.label,
    ),

    // BottomNavigationBar
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.primary600,
      unselectedItemColor: AppColors.textSecondary,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedLabelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
      unselectedLabelStyle: TextStyle(fontSize: 10),
    ),

    // Card
    cardTheme: CardThemeData(
      color: AppColors.bgCard,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: AppRadius.lg,
        side: const BorderSide(color: AppColors.border, width: 0.5),
      ),
      margin: EdgeInsets.zero,
    ),

    // Divider
    dividerTheme: const DividerThemeData(
      color: AppColors.border,
      thickness: 0.5,
      space: 0,
    ),
  );
}