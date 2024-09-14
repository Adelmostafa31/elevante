import 'package:elevante/core/theming/colors.dart';
import 'package:flutter/material.dart';

class RatingsRow extends StatelessWidget {
  const RatingsRow({
    super.key,
    required this.rate,
  });
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Review($rate)',
        ),
        const Icon(
          Icons.star,
          color: ColorsManager.yellow,
        ),
        const Spacer(),
        Container(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
            color: ColorsManager.darkBlue,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: ColorsManager.white,
            ),
          ),
        )
      ],
    );
  }
}
