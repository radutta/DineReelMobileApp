import 'package:flutter/material.dart';

import '../constants/colors.dart';

class AppTheme {
  static final ThemeData theme = ThemeData(
    primaryColor: AppColors.prinaryGradientDeep,
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.prinaryGradientDeep),
  );
}
