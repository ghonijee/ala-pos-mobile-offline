// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../token/colors.dart';

class TypographyData {
  /// Largest of the display styles.
  ///
  /// As the largest text on the screen, display styles are reserved for short,
  /// important text or numerals. They work best on large screens.
  final TextStyle? displayLarge;

  /// Middle size of the display styles.
  ///
  /// As the largest text on the screen, display styles are reserved for short,
  /// important text or numerals. They work best on large screens.
  final TextStyle? displayMedium;

  /// Smallest of the display styles.
  ///
  /// As the largest text on the screen, display styles are reserved for short,
  /// important text or numerals. They work best on large screens.
  final TextStyle? displaySmall;

  /// Largest of the headline styles.
  ///
  /// Headline styles are smaller than display styles. They're best-suited for
  /// short, high-emphasis text on smaller screens.
  final TextStyle? headlineLarge;

  /// Middle size of the headline styles.
  ///
  /// Headline styles are smaller than display styles. They're best-suited for
  /// short, high-emphasis text on smaller screens.
  final TextStyle? headlineMedium;

  /// Smallest of the headline styles.
  ///
  /// Headline styles are smaller than display styles. They're best-suited for
  /// short, high-emphasis text on smaller screens.
  final TextStyle? headlineSmall;

  /// Largest of the title styles.
  ///
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  final TextStyle? titleLarge;

  /// Middle size of the title styles.
  ///
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  final TextStyle? titleMedium;

  /// Smallest of the title styles.
  ///
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  final TextStyle? titleSmall;

  /// Largest of the body styles.
  ///
  /// Body styles are used for longer passages of text.
  final TextStyle? bodyLarge;

  /// Middle size of the body styles.
  ///
  /// Body styles are used for longer passages of text.
  ///
  /// The default text style for [Material].
  final TextStyle? bodyMedium;

  /// Smallest of the body styles.
  ///
  /// Body styles are used for longer passages of text.
  final TextStyle? bodySmall;

  /// Largest of the label styles.
  ///
  /// Label styles are smaller, utilitarian styles, used for areas of the UI
  /// such as text inside of components or very small supporting text in the
  /// content body, like captions.
  ///
  /// Used for text on [ElevatedButton], [TextButton] and [OutlinedButton].
  final TextStyle? labelLarge;

  /// Middle size of the label styles.
  ///
  /// Label styles are smaller, utilitarian styles, used for areas of the UI
  /// such as text inside of components or very small supporting text in the
  /// content body, like captions.
  final TextStyle? labelMedium;

  /// Smallest of the label styles.
  ///
  /// Label styles are smaller, utilitarian styles, used for areas of the UI
  /// such as text inside of components or very small supporting text in the
  /// content body, like captions.
  final TextStyle? labelSmall;
  TypographyData({
    this.displayLarge,
    this.displayMedium,
    this.displaySmall,
    this.headlineLarge,
    this.headlineMedium,
    this.headlineSmall,
    this.titleLarge,
    this.titleMedium,
    this.titleSmall,
    this.bodyLarge,
    this.bodyMedium,
    this.bodySmall,
    this.labelLarge,
    this.labelMedium,
    this.labelSmall,
  });

  /// A Material Design text theme with dark glyphs based on Roboto.
  ///
  /// This [TypographyData] provides color but not font weight.
  static TypographyData lightTheme() => TypographyData(
        displayLarge: const TextStyle(debugLabel: 'blackMountainView displayLarge', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 57, letterSpacing: 0.25),
        displayMedium: const TextStyle(debugLabel: 'blackMountainView displayMedium', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 45),
        displaySmall: const TextStyle(debugLabel: 'blackMountainView displaySmall', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 36),
        headlineLarge: const TextStyle(debugLabel: 'blackMountainView headlineLarge', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 32),
        headlineMedium: const TextStyle(debugLabel: 'blackMountainView headlineMedium', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 28),
        headlineSmall: const TextStyle(debugLabel: 'blackMountainView headlineSmall', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 24),
        titleLarge: const TextStyle(debugLabel: 'blackMountainView titleLarge', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 22),
        titleMedium: const TextStyle(debugLabel: 'blackMountainView titleMedium', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 16),
        titleSmall: const TextStyle(debugLabel: 'blackMountainView titleSmall', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 14),
        bodyLarge: const TextStyle(debugLabel: 'blackMountainView bodyLarge', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 16),
        bodyMedium: const TextStyle(debugLabel: 'blackMountainView bodyMedium', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 14),
        bodySmall: const TextStyle(debugLabel: 'blackMountainView bodySmall', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 12),
        labelLarge: const TextStyle(debugLabel: 'blackMountainView labelLarge', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 14),
        labelMedium: const TextStyle(debugLabel: 'blackMountainView labelMedium', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 12),
        labelSmall: const TextStyle(debugLabel: 'blackMountainView labelSmall', fontFamily: 'Roboto', color: ColorsToken.blackPrimary, fontSize: 11),
      );

  /// A Material Design text theme with dark glyphs based on Roboto.
  ///
  /// This [TypographyData] provides color but not font weight.
  static TypographyData darkTheme() => TypographyData(
        displayLarge: const TextStyle(debugLabel: 'blackMountainView displayLarge', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 57, letterSpacing: 0.25),
        displayMedium: const TextStyle(debugLabel: 'blackMountainView displayMedium', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 45),
        displaySmall: const TextStyle(debugLabel: 'blackMountainView displaySmall', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 36),
        headlineLarge: const TextStyle(debugLabel: 'blackMountainView headlineLarge', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 32),
        headlineMedium: const TextStyle(debugLabel: 'blackMountainView headlineMedium', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 28),
        headlineSmall: const TextStyle(debugLabel: 'blackMountainView headlineSmall', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 24),
        titleLarge: const TextStyle(debugLabel: 'blackMountainView titleLarge', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 22),
        titleMedium: const TextStyle(debugLabel: 'blackMountainView titleMedium', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 16),
        titleSmall: const TextStyle(debugLabel: 'blackMountainView titleSmall', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 14),
        bodyLarge: const TextStyle(debugLabel: 'blackMountainView bodyLarge', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 16),
        bodyMedium: const TextStyle(debugLabel: 'blackMountainView bodyMedium', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 14),
        bodySmall: const TextStyle(debugLabel: 'blackMountainView bodySmall', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 12),
        labelLarge: const TextStyle(debugLabel: 'blackMountainView labelLarge', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 14),
        labelMedium: const TextStyle(debugLabel: 'blackMountainView labelMedium', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 12),
        labelSmall: const TextStyle(debugLabel: 'blackMountainView labelSmall', fontFamily: 'Roboto', color: ColorsToken.white85, fontSize: 11),
      );
}
