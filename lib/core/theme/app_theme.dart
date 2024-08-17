import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

/// Projedeki tüm metin stillerini ve diğer tema ayarlarını içerir.
class AppTheme {
  // App bar başlık stili

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor:
        Colors.white, // Arka plan rengini beyaz olarak ayarla
    fontFamily: AppFonts.poppins, // Varsayılan yazı tipi poppins
  );

  static const TextStyle appBarTitle = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.w700, // semibold
    fontSize: 18,
    color: AppColors.black,
    letterSpacing: 0.5, // Karakterler arası çok az boşluk
  );

  // Section başlık stili
  static const TextStyle sectionTitle = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.bold, // bold
    fontSize: 16,
    color: AppColors.black,
  );

  // Section alt başlık stili (ana renk)
  static const TextStyle sectionPrimaryColorSubtitle = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.bold, // bold
    fontSize: 12,
    color: AppColors.primary,
  );

  // Kart başlık stili
  static const TextStyle cardTitle = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.w500, // bold
    fontSize: 14,
    color: AppColors.black,
  );

  // Kart alt başlık stili
  static const TextStyle cardSubtitle = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.w400, // regular
    fontSize: 12,
    color: AppColors.normalgray,
  );

  // Kart lokasyon stili
  static const TextStyle cardLocality = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.w400, // regular
    fontSize: 12,
    color: AppColors.primary,
  );

  // Kart zaman bilgisi stili
  static const TextStyle cardTimeAgo = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.w400, // regular
    fontSize: 12,
    color: AppColors.normalgray,
  );

  // TextField stili
  static final InputDecoration textFieldDecoration = InputDecoration(
    fillColor: AppColors.lightgray,
    filled: true, // Arka plan rengini doldur
    border: OutlineInputBorder(
      borderSide: BorderSide.none, // Border olmaması için
      borderRadius: BorderRadius.circular(6), // Border-radius
    ),
    hintStyle: const TextStyle(
      fontFamily: AppFonts.poppins,
      fontSize: 14,
      fontWeight: FontWeight.w400, // regular
      color: AppColors.textFieldText,
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
  );
}
