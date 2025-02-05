import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/core/constants/app_colors.dart';
import 'package:myapp/core/helpers/hex_color.dart';

class AppThemeHelper {
  static const String LIGHT_THEME = 'light';

  static const String DARK_THEME = 'dark';

  static const String SYSTEM_THEME = 'system';

  static ThemeData getThemeData(String theme) {
    switch (theme) {
      case LIGHT_THEME:
        return _lightMode;
      case DARK_THEME:
        return _darkMode;
      case SYSTEM_THEME:
        return ThemeData.from(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue));
      default:
        return ThemeData.light();
    }
  }

  static final ThemeData _lightMode = ThemeData.light().copyWith(
    colorScheme: ColorScheme.light(primary: HexColor(AppColors.primary)),
    textTheme: GoogleFonts.poppinsTextTheme(),
  );

  static final ThemeData _darkMode = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.dark(primary: HexColor(AppColors.primary)),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontFamily: 'Aeoniks-Regular',
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Aeoniks-Regular',
      ),
      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Aeoniks-Regular',
      ),
    ),
    scaffoldBackgroundColor: HexColor(AppColors.scaffoldColor),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          Colors.transparent,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          HexColor(AppColors.primary),
        ),
      ),
    ),
  );
}
