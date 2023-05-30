// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ala_ui/src/foundation/theme_adapter.dart';

import 'foundation/theme_foundation.dart';
import 'theme_provider.dart';

class BaseUI extends StatelessWidget {
  final Widget? child;
  final ThemeMode themeMode;

  final Widget Function(BuildContext context, ThemeData themeLight, ThemeData themeDark, ThemeMode themeMode)? builder;

  const BaseUI({
    Key? key,
    this.child,
    this.themeMode = ThemeMode.light,
    this.builder,
  }) : super(key: key);

  static ThemeFoundation of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
    if (provider == null) {
      throw Exception('No ThemeProvider found in the widget tree');
    }
    return provider.theme;
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      ThemeData themeLight = ThemeAdapter.toThemeData(ThemeFoundation.light());
      ThemeData themeDark = ThemeAdapter.toThemeData(ThemeFoundation.dark());
      return ThemeProvider(
        theme: themeMode == ThemeMode.light ? ThemeFoundation.light() : ThemeFoundation.dark(),
        child: Builder(
          builder: (context) {
            return builder?.call(context, themeLight, themeDark, themeMode) ?? child!;
          },
        ),
      );
    });
  }
}
