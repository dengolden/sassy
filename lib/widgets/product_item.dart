import 'package:flutter/material.dart';
import 'package:sassy/shared/theme.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String category;
  final int price;

  const ProductItem({
    required this.imageUrl,
    required this.title,
    required this.category,
    this.price = 0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 20,
          right: 18,
        ),
        width: 176,
        height: 230,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 142,
                left: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: mediumTextStyle.copyWith(
                      fontSize: 15,
                      color: blackColor,
                    ),
                  ),
                  Text(
                    category,
                    style: lightTextStyle.copyWith(
                      fontSize: 12,
                      color: greyColor,
                    ),
                  ),
                  Text(
                    '\$${price}',
                    style: mediumTextStyle.copyWith(
                      fontSize: 16,
                      color: blackColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 195,
                left: 140,
              ),
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/favorite_icon.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
