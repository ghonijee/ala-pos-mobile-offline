import 'package:ala_ui/src/foundation/space_size.dart';
import 'package:flutter/foundation.dart';

import 'foundation.dart';

class ThemeFoundation {
  ColorsData color;
  TypographyData typo;
  ShapeData shape;
  Brightness brightness;
  Space space;

  ThemeFoundation({
    required this.color,
    required this.typo,
    required this.shape,
    required this.brightness,
    required this.space,
  });

  factory ThemeFoundation.light() => ThemeFoundation(
        color: ColorsData.light(),
        shape: ShapeData(),
        typo: TypographyData.lightTheme(),
        brightness: Brightness.light,
        space: Space(),
      );

  factory ThemeFoundation.dark() => ThemeFoundation(
        color: ColorsData.dark(),
        shape: ShapeData(),
        typo: TypographyData.darkTheme(),
        brightness: Brightness.dark,
        space: Space(),
      );
}
