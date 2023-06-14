// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../token/colors.dart';

class ColorsData {
  final ColorsToken tokens = ColorsToken();
  // Material color scheme
  /// The overall brightness of this color scheme.
  final Brightness brightness;

  /// The color displayed most frequently across your app’s screens and components.
  final Color primary;

  /// A color that's clearly legible when drawn on [primary].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [primary] and [onPrimary] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onPrimary;

  final Color? _primaryContainer;

  /// A color used for elements needing less emphasis than [primary].
  Color get primaryContainer => _primaryContainer ?? primary;

  final Color? _onPrimaryContainer;

  /// A color that's clearly legible when drawn on [primaryContainer].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [primaryContainer] and [onPrimaryContainer] of at least 4.5:1
  /// is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  Color get onPrimaryContainer => _onPrimaryContainer ?? onPrimary;

  /// An accent color used for less prominent components in the UI, such as
  /// filter chips, while expanding the opportunity for color expression.
  final Color secondary;

  /// A color that's clearly legible when drawn on [secondary].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [secondary] and [onSecondary] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onSecondary;

  final Color? _secondaryContainer;

  /// A color used for elements needing less emphasis than [secondary].
  Color get secondaryContainer => _secondaryContainer ?? secondary;

  final Color? _onSecondaryContainer;

  /// A color that's clearly legible when drawn on [secondaryContainer].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [secondaryContainer] and [onSecondaryContainer] of at least 4.5:1 is
  /// recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  Color get onSecondaryContainer => _onSecondaryContainer ?? onSecondary;

  final Color? _tertiary;

  /// A color used as a contrasting accent that can balance [primary]
  /// and [secondary] colors or bring heightened attention to an element,
  /// such as an input field.
  Color get tertiary => _tertiary ?? secondary;

  final Color? _onTertiary;

  /// A color that's clearly legible when drawn on [tertiary].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [tertiary] and [onTertiary] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  Color get onTertiary => _onTertiary ?? onSecondary;

  final Color? _tertiaryContainer;

  /// A color used for elements needing less emphasis than [tertiary].
  Color get tertiaryContainer => _tertiaryContainer ?? tertiary;

  final Color? _onTertiaryContainer;

  /// A color that's clearly legible when drawn on [tertiaryContainer].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [tertiaryContainer] and [onTertiaryContainer] of at least 4.5:1 is
  /// recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  Color get onTertiaryContainer => _onTertiaryContainer ?? onTertiary;

  /// The color to use for input validation errors, e.g. for
  /// [InputDecoration.errorText].
  final Color error;

  /// A color that's clearly legible when drawn on [error].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [error] and [onError] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onError;

  final Color? _errorContainer;

  /// A color used for error elements needing less emphasis than [error].
  Color get errorContainer => _errorContainer ?? error;

  final Color? _onErrorContainer;

  /// A color that's clearly legible when drawn on [errorContainer].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [errorContainer] and [onErrorContainer] of at least 4.5:1 is
  /// recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  Color get onErrorContainer => _onErrorContainer ?? onError;

  /// A color that typically appears behind scrollable content.
  final Color background;

  /// A color that's clearly legible when drawn on [background].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [background] and [onBackground] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onBackground;

  /// The background color for widgets like [Card].
  final Color surface;

  /// A color that's clearly legible when drawn on [surface].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [surface] and [onSurface] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onSurface;

  final Color? _surfaceVariant;

  /// A color variant of [surface] that can be used for differentiation against
  /// a component using [surface].
  Color get surfaceVariant => _surfaceVariant ?? surface;

  final Color? _onSurfaceVariant;

  /// A color that's clearly legible when drawn on [surfaceVariant].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [surfaceVariant] and [onSurfaceVariant] of at least 4.5:1 is
  /// recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  Color get onSurfaceVariant => _onSurfaceVariant ?? onSurface;

  final Color? _outline;

  /// A utility color that creates boundaries and emphasis to improve usability.
  Color get outline => _outline ?? onBackground;

  final Color? _outlineVariant;

  /// A utility color that creates boundaries for decorative elements when a
  /// 3:1 contrast isn’t required, such as for dividers or decorative elements.
  Color get outlineVariant => _outlineVariant ?? onBackground;

  final Color? _shadow;

  /// A color use to paint the drop shadows of elevated components.
  Color get shadow => _shadow ?? const Color(0xff000000);

  final Color? _scrim;

  /// A color use to paint the scrim around of modal components.
  Color get scrim => _scrim ?? const Color(0xff000000);

  final Color? _inverseSurface;

  /// A surface color used for displaying the reverse of what’s seen in the
  /// surrounding UI, for example in a SnackBar to bring attention to
  /// an alert.
  Color get inverseSurface => _inverseSurface ?? onSurface;

  final Color? _onInverseSurface;

  /// A color that's clearly legible when drawn on [inverseSurface].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [inverseSurface] and [onInverseSurface] of at least 4.5:1 is
  /// recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  Color get onInverseSurface => _onInverseSurface ?? surface;

  final Color? _inversePrimary;

  /// An accent color used for displaying a highlight color on [inverseSurface]
  /// backgrounds, like button text in a SnackBar.
  Color get inversePrimary => _inversePrimary ?? onPrimary;

  final Color? _surfaceTint;

  /// A color used as an overlay on a surface color to indicate a component's
  /// elevation.
  Color get surfaceTint => _surfaceTint ?? primary;

  final Color? _primaryVariant;

  /// A darker version of the primary color.
  @Deprecated('Use primary or primaryContainer instead. '
      'This feature was deprecated after v2.6.0-0.0.pre.')
  Color get primaryVariant => _primaryVariant ?? primary;

  final Color? _secondaryVariant;

  /// A darker version of the secondary color.
  @Deprecated('Use secondary or secondaryContainer instead. '
      'This feature was deprecated after v2.6.0-0.0.pre.')
  Color get secondaryVariant => _secondaryVariant ?? secondary;

  /// Create a ColorScheme instance from the given colors.
  ///
  /// [ColorScheme.fromSeed] can be used as a simpler way to create a full
  /// color scheme derived from a single seed color.
  ///
  /// For the color parameters that are nullable, it is still recommended
  /// that applications provide values for them. They are only nullable due
  /// to backwards compatibility concerns.
  ///
  /// If a color is not provided, the closest fallback color from the given
  /// colors will be used for it (e.g. [primaryContainer] will default
  /// to [primary]). Material Design 3 makes use of these colors for many
  /// component defaults, so for the best results the application should
  /// supply colors for all the parameters. An easy way to ensure this is to
  /// use [ColorScheme.fromSeed] to generate a full set of colors.
  ///
  /// During the migration to Material Design 3, if an app's
  /// [ThemeData.useMaterial3] is false, then components will only
  /// use the following colors for defaults:
  ///
  /// * [primary]
  /// * [onPrimary]
  /// * [secondary]
  /// * [onSecondary]
  /// * [error]
  /// * [onError]
  /// * [background]
  /// * [onBackground]
  /// * [surface]
  /// * [onSurface]
  ColorsData({
    required this.brightness,
    required this.primary,
    required this.onPrimary,
    Color? primaryContainer,
    Color? onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    Color? secondaryContainer,
    Color? onSecondaryContainer,
    Color? tertiary,
    Color? onTertiary,
    Color? tertiaryContainer,
    Color? onTertiaryContainer,
    required this.error,
    required this.onError,
    Color? errorContainer,
    Color? onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    Color? surfaceVariant,
    Color? onSurfaceVariant,
    Color? outline,
    Color? outlineVariant,
    Color? shadow,
    Color? scrim,
    Color? inverseSurface,
    Color? onInverseSurface,
    Color? inversePrimary,
    Color? surfaceTint,
    @Deprecated('Use primary or primaryContainer instead. '
        'This feature was deprecated after v2.6.0-0.0.pre.')
        Color? primaryVariant,
    @Deprecated('Use secondary or secondaryContainer instead. '
        'This feature was deprecated after v2.6.0-0.0.pre.')
        Color? secondaryVariant,
  })  : assert(brightness != null),
        assert(primary != null),
        assert(onPrimary != null),
        assert(secondary != null),
        assert(onSecondary != null),
        assert(error != null),
        assert(onError != null),
        assert(background != null),
        assert(onBackground != null),
        assert(surface != null),
        assert(onSurface != null),
        _primaryContainer = primaryContainer,
        _onPrimaryContainer = onPrimaryContainer,
        _secondaryContainer = secondaryContainer,
        _onSecondaryContainer = onSecondaryContainer,
        _tertiary = tertiary,
        _onTertiary = onTertiary,
        _tertiaryContainer = tertiaryContainer,
        _onTertiaryContainer = onTertiaryContainer,
        _errorContainer = errorContainer,
        _onErrorContainer = onErrorContainer,
        _surfaceVariant = surfaceVariant,
        _onSurfaceVariant = onSurfaceVariant,
        _outline = outline,
        _outlineVariant = outlineVariant,
        _shadow = shadow,
        _scrim = scrim,
        _inverseSurface = inverseSurface,
        _onInverseSurface = onInverseSurface,
        _inversePrimary = inversePrimary,
        _primaryVariant = primaryVariant,
        _secondaryVariant = secondaryVariant,
        _surfaceTint = surfaceTint;

  factory ColorsData.light() => ColorsData(
        brightness: Brightness.light,
        primary: ColorsToken.syslightprimary,
        onPrimary: Color(0xFFFFFFFF),
        primaryContainer: Color(0xFFDBE1FF),
        onPrimaryContainer: Color(0xFF00174D),
        secondary: Color(0xFF7A5900),
        onSecondary: Color(0xFFFFFFFF),
        secondaryContainer: Color(0xFFFFDEA3),
        onSecondaryContainer: Color(0xFF261900),
        tertiary: Color(0xFF745470),
        onTertiary: Color(0xFFFFFFFF),
        tertiaryContainer: Color(0xFFFFD6F7),
        onTertiaryContainer: Color(0xFF2B122A),
        error: Color(0xFFBA1A1A),
        onError: Color(0xFFFFFFFF),
        errorContainer: Color(0xFFFFDAD6),
        onErrorContainer: Color(0xFF410002),
        outline: Color(0xFF767680),
        background: ColorsToken.syslightsurface,
        onBackground: Color(0xFF1B1B1F),
        surface: ColorsToken.syslightbackground,
        onSurface: Color(0xFF1B1B1F),
        surfaceVariant: Color(0xFFE2E1EC),
        onSurfaceVariant: Color(0xFF45464F),
        inverseSurface: Color(0xFF303034),
        onInverseSurface: Color(0xFFF2F0F4),
        inversePrimary: Color(0xFFB5C4FF),
        shadow: Color(0xFF000000),
        surfaceTint: Color(0xFF3658B8),
        outlineVariant: Color(0xFFC6C6D0),
        scrim: Color(0xFF000000),
      );

  factory ColorsData.dark() => ColorsData(
        brightness: Brightness.dark,
        primary: ColorsToken.syslightprimary,
        onPrimary: ColorsToken.syslightonprimary,
        primaryContainer: Color(0xFF173F9F),
        onPrimaryContainer: Color(0xFFDBE1FF),
        secondary: Color(0xFFF5BE48),
        onSecondary: Color(0xFF402D00),
        secondaryContainer: Color(0xFF5D4200),
        onSecondaryContainer: Color(0xFFFFDEA3),
        tertiary: Color(0xFFE2BBDB),
        onTertiary: Color(0xFF422740),
        tertiaryContainer: Color(0xFF5B3D57),
        onTertiaryContainer: Color(0xFFFFD6F7),
        error: Color(0xFFFFB4AB),
        onError: Color(0xFF690005),
        errorContainer: Color(0xFF93000A),
        onErrorContainer: Color(0xFFFFDAD6),
        outline: Color(0xFF8F909A),
        background: ColorsToken.sysdarksurface,
        onBackground: Color(0xFFE4E2E6),
        surface: ColorsToken.sysdarkbackground,
        onSurface: Color(0xFFC7C6CA),
        surfaceVariant: Color(0xFF45464F),
        onSurfaceVariant: Color(0xFFC6C6D0),
        inverseSurface: Color(0xFFE4E2E6),
        onInverseSurface: Color(0xFF1B1B1F),
        inversePrimary: Color(0xFF3658B8),
        shadow: Color(0xFF000000),
        surfaceTint: Color(0xFFB5C4FF),
        outlineVariant: Color(0xFF45464F),
        scrim: Color(0xFF000000),
      );

  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: onInverseSurface,
      inversePrimary: inversePrimary,
      surfaceTint: surfaceTint,
      primaryVariant: primaryVariant,
      secondaryVariant: secondaryVariant,
    );
  }
}
