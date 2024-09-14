import 'package:elevante/core/theming/colors.dart';
import 'package:flutter/material.dart';

ThemeData theme() => ThemeData(
      primaryColor: ColorsManager.blue,
      scaffoldBackgroundColor: ColorsManager.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorsManager.white,
        surfaceTintColor: ColorsManager.white,
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: ColorsManager.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
      applyElevationOverlayColor: false,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
