import 'package:flutter/material.dart';
import 'package:sassy/models/product.dart';
import 'package:sassy/shared/theme.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        right: 18,
      ),
      width: 176,
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
                image: NetworkImage(
                  product.images[0],
                ),
                fit: BoxFit.cover,
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
                  product.title,
                  maxLines: 2,
                  style: mediumTextStyle.copyWith(
                    fontSize: 15,
                    color: blackColor,
                  ),
                ),
                Text(
                  product.category.name,
                  style: lightTextStyle.copyWith(
                    fontSize: 12,
                    color: greyColor,
                  ),
                ),
                Text(
                  '\$${product.price}',
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
    );
  }
}
