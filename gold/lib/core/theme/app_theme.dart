import 'package:flutter/material.dart';
import 'colors.dart';
import 'typography.dart';

abstract final class AppTheme {
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.surface,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.gold),
        textTheme: const TextTheme(headlineSmall: AppTypography.headline, bodyMedium: AppTypography.body),
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.surface, foregroundColor: AppColors.ink, elevation: 0),
      );
}