import 'package:flutter/material.dart';
import 'package:flex_seed_scheme/flex_seed_scheme.dart';

class AppColors {
  static Color primarSeedColor = const Color(0xFF192256);
  static Color secondarySeedColor = const Color(0xFF9C2540);

  static final ColorScheme schemeLight = SeedColorScheme.fromSeeds(
    brightness: Brightness.light,
    primaryKey: primarSeedColor,
    secondaryKey: secondarySeedColor,
    tones: FlexTones.vivid(Brightness.light),
  );

  static final ColorScheme schemeDark = SeedColorScheme.fromSeeds(
      brightness: Brightness.dark,
      primaryKey: primarSeedColor,
      secondaryKey: secondarySeedColor,
      tones: FlexTones.vivid(Brightness.dark));

  static final appColorSchemeLight = schemeLight;
  static final appColorSchemeDark = schemeDark;
}
