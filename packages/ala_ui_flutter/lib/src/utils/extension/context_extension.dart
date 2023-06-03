import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/widgets.dart';

extension ContextExtension on BuildContext {
  ThemeFoundation get theme {
    ThemeFoundation themeFoundation = BaseUI.of(this);
    return themeFoundation;
  }
}
