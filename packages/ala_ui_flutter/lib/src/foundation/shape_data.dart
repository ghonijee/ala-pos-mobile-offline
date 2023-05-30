import 'package:flutter/material.dart';

class ShapeData {
  /// Shape for component
  ///
  /// [Banners]
  /// [Bottom app bars]
  /// Full-screen dialogs
  /// Lists
  /// Navigation bars
  /// Navigation rails
  /// Progress indicators
  /// Search view (full-screen)
  /// Side sheets (docked)
  /// Tabs
  /// Top app bars
  final BorderRadius none = BorderRadius.circular(0);

  /// Use for component
  ///
  /// Autocomplete menu
  /// Select menu
  /// Snackbars
  /// Standard menu
  /// Text fields
  final BorderRadius xs = BorderRadius.circular(4);
  final BorderRadius s = BorderRadius.circular(8);
  final BorderRadius m = BorderRadius.circular(12);
  final BorderRadius l = BorderRadius.circular(16);
  final BorderRadius xl = BorderRadius.circular(20);
  final BorderRadius xxl = BorderRadius.circular(28);
}
