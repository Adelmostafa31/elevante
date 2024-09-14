// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushNamedAndRemoveUntill(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }

  void pop() => Navigator.of(this).pop();
}

// Sized box
extension IntExtension on int? {
  int validate({int value = 0}) {
    return this ?? value;
  }

  Widget get height => SizedBox(
        height: this?.toDouble(),
      );
  Widget get width => SizedBox(
        width: this?.toDouble(),
      );
}

Widget circular = Center(
  child: SizedBox(
    width: 85,
    height: 85,
    child: Lottie.asset('assets/images/loading.json'),
  ),
);
