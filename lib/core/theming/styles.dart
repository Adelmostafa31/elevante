// ignore_for_file: depend_on_referenced_packages

import 'package:elevante/core/theming/colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle font16WhiteBold = const TextStyle(
    color: ColorsManager.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: 'Work Sans',
  );
  static TextStyle font20BlueBold = const TextStyle(
    color: ColorsManager.blue,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'Work Sans',
  );
  static TextStyle font14Blue = const TextStyle(
    color: ColorsManager.blue,
    fontSize: 14,
    fontFamily: 'Work Sans',
  );
}
