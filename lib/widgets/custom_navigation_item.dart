import 'package:flutter/material.dart';
import 'package:sassy/shared/theme.dart';

class CustomNavigationItem extends StatefulWidget {
  final String outlineImageUrl;
  final String filledImageUrl;
  final double imageWidth;
  final double imageHeight;
  final bool isActive;

  CustomNavigationItem({
    required this.outlineImageUrl,
    required this.filledImageUrl,
    this.imageHeight = 27,
    this.imageWidth = 27,
    this.isActive = false,
  });

  @override
  State<CustomNavigationItem> createState() => _CustomNavigationItemState();
}

class _CustomNavigationItemState extends State<CustomNavigationItem> {
  late bool _isActive;

  @override
  void initState() {
    super.initState();
    _isActive = widget.isActive;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          _isActive ? widget.filledImageUrl : widget.outlineImageUrl,
          width: widget.imageWidth,
          height: widget.imageHeight,
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: 5,
          height: 5,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _isActive ? blackColor : Colors.transparent,
          ),
        )
      ],
    );
  }
}
