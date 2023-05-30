// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';

import 'foundation/theme_foundation.dart';

class ThemeProvider extends InheritedWidget {
  final ThemeFoundation theme;

  const ThemeProvider({
    super.key,
    required this.theme,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return theme != oldWidget.theme;
  }
}
