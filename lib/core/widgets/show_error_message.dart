import 'package:elevante/core/theming/colors.dart';
import 'package:elevante/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ShowErrorMessage extends StatelessWidget {
  const ShowErrorMessage({
    super.key,
    required this.message,
  });
  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: ColorsManager.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        textAlign: TextAlign.center,
        message,
        style: TextStyles.font16WhiteBold,
      ),
    );
  }
}
