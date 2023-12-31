import 'package:flutter/material.dart';

import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  final Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [newTheme].
  void changeTheme(String newTheme) {
    _appTheme = newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimary,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.onPrimaryContainer,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.onPrimaryContainer,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray700,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 18.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF000000),
    primaryContainer: Color(0XFF7200CB),
    secondary: Color(0XFF7200CB),
    secondaryContainer: Color(0XFFF87791),
    tertiary: Color(0XFF7200CB),
    tertiaryContainer: Color(0XFFF87791),

    // Background colors
    background: Color(0XFF7200CB),

    // Surface colors
    surface: Color(0XFF7200CB),
    surfaceTint: Color(0XFF8E00FF),
    surfaceVariant: Color(0XFFF87791),

    // Error colors
    error: Color(0XFF8E00FF),
    errorContainer: Color(0XFFF87791),
    onError: Color(0XFFFFFFFF),
    onErrorContainer: Color(0XFF7200CB),

    // On colors(text colors)
    onBackground: Color(0XFFEDEDED),
    onInverseSurface: Color(0XFFFFFFFF),
    onPrimary: Color(0XFF8E00FF),
    onPrimaryContainer: Color(0XFFEDEDED),
    onSecondary: Color(0XFFEDEDED),
    onSecondaryContainer: Color(0XFF7200CB),
    onTertiary: Color(0XFFEDEDED),
    onTertiaryContainer: Color(0XFF7200CB),

    // Other colors
    outline: Color(0XFF8E00FF),
    outlineVariant: Color(0XFF7200CB),
    scrim: Color(0XFF7200CB),
    shadow: Color(0XFF8E00FF),

    // Inverse colors
    inversePrimary: Color(0XFF7200CB),
    inverseSurface: Color(0XFF8E00FF),

    // Pending colors
    onSurface: Color(0XFFEDEDED),
    onSurfaceVariant: Color(0XFF7200CB),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amberA400 => const Color(0XFFFFCC00);

  // BlueGray
  Color get blueGray400 => const Color(0XFF888888);

  // Gray
  Color get gray100 => const Color(0XFFF2F2F2);
  Color get gray400 => const Color(0XFFC8C7CC);
  Color get gray40001 => const Color(0XFFCACACA);
  Color get gray50 => const Color(0XFFFAFAFA);
  Color get gray700 => const Color(0XFF656565);
  Color get gray900 => const Color(0XFF080A24);

  // Pink
  Color get pink500 => const Color(0XFFF52D56);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
