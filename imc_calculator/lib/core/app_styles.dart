import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class AppStyles {
  static ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: WidgetStateProperty.all(AppColors.primary),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
}
