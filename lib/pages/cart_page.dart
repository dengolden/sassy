import 'package:flutter/material.dart';

import 'package:sassy/pages/my_cart_page.dart';
import 'package:sassy/shared/theme.dart';
import 'package:sassy/widgets/custom_circle_button.dart';
import 'package:sassy/widgets/custom_navigation_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
        ),
        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: CustomCircleButton(
                imageUrl: 'assets/back_icon.png',
                iconWidth: 22,
                iconHeight: 22,
              ),
            ),
            SizedBox(width: 100),
            Text(
              'My Cart',
              style: semiBoldTextStyle.copyWith(
                fontSize: 20,
                color: blackColor,
              ),
            ),
          ],
        ),
      );
    }

    Widget buildContent() {
      return MyCartPage();
    }

    Widget receiptBox() {
      return Container(
        margin: EdgeInsets.only(
          top: 350,
          left: 30,
          right: 30,
        ),
        width: double.infinity,
        height: 335,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 36,
                left: 30,
                right: 30,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal :',
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                          color: blackColor,
                        ),
                      ),
                      Text(
                        '\$370',
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery fee :',
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                          color: blackColor,
                        ),
                      ),
                      Text(
                        '\$10',
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount Voucher :',
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                          color: blackColor,
                        ),
                      ),
                      Text(
                        'OFF',
                        style: mediumTextStyle.copyWith(
                          fontSize: 16,
                          color: tomatoColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 36),
            Divider(
              thickness: 1,
              color: secondaryGreyColor,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 12,
                left: 30,
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total :',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                      color: blackColor,
                    ),
                  ),
                  Text(
                    '\$380',
                    style: mediumTextStyle.copyWith(
                      fontSize: 16,
                      color: tomatoColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
              ),
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: greenColor,
              ),
              child: Center(
                child: Text(
                  'Checkout',
                  style: semiBoldTextStyle.copyWith(
                    fontSize: 18,
                    color: blackColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 88,
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          decoration: BoxDecoration(
            color: whiteColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomNavigationItem(
                outlineImageUrl: 'assets/home_icon.png',
                filledImageUrl: 'assets/home_icon_filled.png',
              ),
              CustomNavigationItem(
                outlineImageUrl: 'assets/cart_icon.png',
                filledImageUrl: 'assets/cart_icon_filled.png',
                isActive: true,
              ),
              CustomNavigationItem(
                outlineImageUrl: 'assets/heart_icon.png',
                filledImageUrl: 'assets/heart_icon_filled.png',
              ),
              CustomNavigationItem(
                outlineImageUrl: 'assets/profile_icon.png',
                filledImageUrl: 'assets/profile_icon_filled.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            buildContent(),
            header(),
            receiptBox(),
            customBottomNavigation(),
          ],
        ),
      ),
    );
  }
}
