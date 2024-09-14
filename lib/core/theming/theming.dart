import 'package:flutter/material.dart';
import 'package:elevante/core/theming/colors.dart';

ThemeData theme() => ThemeData(
      primaryColor: ColorsManager.burbel,
      fontFamily: 'Work Sans',
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
