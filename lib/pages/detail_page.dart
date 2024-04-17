import 'package:flutter/material.dart';
import 'package:sassy/models/product.dart';
import 'package:sassy/shared/theme.dart';
import 'package:sassy/widgets/custom_circle_button.dart';

class DetailPage extends StatelessWidget {
  final Product product;

  const DetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    Widget detailImage() {
      return Container(
        width: double.infinity,
        height: 420,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(product.images[0]),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          top: 60,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: CustomCircleButton(
                imageUrl: 'assets/back_icon.png',
              ),
            ),
            CustomCircleButton(
              imageUrl: 'assets/heart_icon.png',
            )
          ],
        ),
      );
    }

    Widget description() {
      return Container(
        margin: EdgeInsets.only(
          top: 370,
        ),
        padding: EdgeInsets.symmetric(horizontal: 25),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: mediumTextStyle.copyWith(
                  fontSize: 22,
                  color: blackColor,
                ),
              ),
              SizedBox(height: 12),
              Text(
                product.category.name.toString().split('.').last,
                style: lightTextStyle.copyWith(
                  color: greyColor,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 78,
                width: 78,
                decoration: BoxDecoration(
                  color: greenColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '\$${product.price}',
                    style: mediumTextStyle.copyWith(
                      fontSize: 30,
                      color: blackColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 31,
              ),
              Text(
                'Step into style with these eye-catching sneakers featuring a striking combination of orange and blue hues. Designed for both comfort and fashion',
                style: regularTextStyle.copyWith(
                  color: greyColor,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Read More...',
                style: regularTextStyle.copyWith(
                  color: blackColor,
                ),
              ),
              SizedBox(
                height: 58,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                          '1',
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
                  Container(
                    width: 220,
                    height: 48,
                    decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'Add to Cart',
                          style: semiBoldTextStyle.copyWith(
                            fontSize: 18,
                            color: blackColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            detailImage(),
            header(),
            description(),
          ],
        ),
      ),
    );
  }
}
