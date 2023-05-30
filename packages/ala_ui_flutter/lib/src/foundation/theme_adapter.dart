// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'foundation.dart';

class ThemeAdapter {
  ThemeFoundation themeFoundation;
  ThemeAdapter({
    required this.themeFoundation,
  });

  static ThemeData toThemeData(ThemeFoundation foundation) {
    TextTheme textThemeBase = toTextTheme(foundation.typo);

    return ThemeData(
      useMaterial3: true,
      colorScheme: foundation.color.toColorScheme(),
      textTheme: textThemeBase,
      typography: Typography.material2021(),
      brightness: foundation.brightness,
      cardColor: foundation.color.surface,
      scaffoldBackgroundColor: foundation.color.background,
    );
  }

  static TextTheme toTextTheme(TypographyData typographyData) => TextTheme(
        displayLarge: typographyData.displayLarge,
        displayMedium: typographyData.displayMedium,
        displaySmall: typographyData.displaySmall,
        headlineLarge: typographyData.headlineLarge,
        headlineMedium: typographyData.headlineMedium,
        headlineSmall: typographyData.headlineSmall,
        titleLarge: typographyData.titleLarge,
        titleMedium: typographyData.titleMedium,
        titleSmall: typographyData.titleSmall,
        labelLarge: typographyData.labelLarge,
        labelMedium: typographyData.labelMedium,
        labelSmall: typographyData.labelSmall,
        bodyLarge: typographyData.bodyLarge,
        bodyMedium: typographyData.bodyMedium,
        bodySmall: typographyData.bodySmall,
      );
}
