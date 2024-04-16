import 'package:flutter/material.dart';
import 'package:sassy/shared/theme.dart';

class CartItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String category;
  final int price;
  final int itemCount;

  const CartItem({
    required this.imageUrl,
    required this.title,
    required this.category,
    this.price = 0,
    this.itemCount = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        padding: EdgeInsets.only(
          top: 16,
        ),
        width: double.infinity,
        height: 119,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: whiteColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 12,
                right: 7,
              ),
              width: 103,
              height: 88,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: mediumTextStyle.copyWith(
                    fontSize: 16,
                    color: blackColor,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category,
                          style: lightTextStyle.copyWith(
                            color: greyColor,
                          ),
                        ),
                        Text(
                          '\$${price}',
                          style: mediumTextStyle.copyWith(
                            fontSize: 20,
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      width: 95,
                      height: 33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.5),
                        color: secondaryGreyColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.remove_circle_outline,
                            size: 27,
                            color: blackColor,
                          ),
                          Text(
                            itemCount.toString(),
                            style: regularTextStyle.copyWith(
                              fontSize: 20,
                            ),
                          ),
                          Icon(
                            Icons.add_circle,
                            size: 27,
                            color: blackColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
