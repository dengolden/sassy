import 'package:flutter/material.dart';
import 'package:sassy/shared/theme.dart';

class CustomCircleButton extends StatelessWidget {
  final String imageUrl;
  final double iconWidth;
  final double iconHeight;

  const CustomCircleButton({
    required this.imageUrl,
    this.iconWidth = 25,
    this.iconHeight = 25,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: whiteColor,
      ),
      child: Center(
        child: Container(
          width: iconWidth,
          height: iconHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
      ),
    );
  }
}
