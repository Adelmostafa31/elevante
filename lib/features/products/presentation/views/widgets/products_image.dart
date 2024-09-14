import 'package:elevante/core/helpers/extentions.dart';
import 'package:elevante/core/theming/colors.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key, required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Image(
          width: double.infinity,
          height: 90,
          fit: BoxFit.contain,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return circular;
          },
          image: NetworkImage(
            image,
          ),
        ),
        Container(
          width: 32,
          height: 32,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ColorsManager.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: ColorsManager.grey.withOpacity(
                  0.7,
                ),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            color: ColorsManager.blue,
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
          ),
        )
      ],
    );
  }
}
