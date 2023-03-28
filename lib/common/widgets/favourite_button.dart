import 'package:flutter/material.dart';
import '../../generated/assets.gen.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({
    super.key,
    required this.isSelected,
    required this.onPressed,
  });

  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: isSelected
          ? Assets.images.favourites.starFilled.svg()
          : Assets.images.favourites.starOutlined.svg(),
    );
  }
}
