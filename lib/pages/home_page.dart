import 'package:flutter/material.dart';
import 'package:sassy/shared/theme.dart';
import 'package:sassy/widgets/custom_circle_button.dart';
import 'package:sassy/widgets/product_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomCircleButton(
              imageUrl: 'assets/burger_menu.png',
              iconWidth: 20,
              iconHeight: 20,
            ),
            Text(
              'SASSY.',
              style: semiBoldTextStyle.copyWith(
                fontSize: 20,
                color: blackColor,
              ),
            ),
            CustomCircleButton(
              imageUrl: 'assets/bell_icon.png',
              iconWidth: 20,
              iconHeight: 20,
            )
          ],
        ),
      );
    }

    Widget headerAds() {
      return Container(
        margin: EdgeInsets.only(
          top: 33,
          left: 30,
          right: 30,
        ),
        width: double.infinity,
        height: 135,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          image: DecorationImage(
            image: AssetImage('assets/header_pict.png'),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: Offset(0, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: Stack(
          children: [
            Container(
              width: 284,
              height: 135,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(17),
                  bottomLeft: Radius.circular(17),
                ),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xff111111), // leftColor
                    Color(0x00111111),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 46,
                    left: 15,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Get your\nSpecial Sale\n',
                          style: semiBoldTextStyle.copyWith(
                            color: whiteColor,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: 'up to 50%',
                          style: semiBoldTextStyle.copyWith(
                            color: greenColor,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 25,
                  ),
                  width: 85,
                  height: 32,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: greenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Shop now',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 12,
                          color: blackColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget ourProduct() {
      return Container(
        margin: EdgeInsets.only(
          top: 33,
          left: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Our Products',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 20,
                      color: blackColor,
                    ),
                  ),
                  Text(
                    'See All',
                    style: regularTextStyle.copyWith(
                      color: greyColor,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductItem(
                    imageUrl: 'assets/product_1.png',
                    title: 'Classic Grey Hooded\nSweatshirt',
                    category: 'Clothes',
                    price: 90,
                  ),
                  ProductItem(
                    imageUrl: 'assets/product_2.png',
                    title: 'Classic Blue Baseball\nCap',
                    category: 'Clothes',
                    price: 86,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget bestSeller() {
      return Container(
        margin: EdgeInsets.only(
          top: 33,
          left: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Seller',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 20,
                      color: blackColor,
                    ),
                  ),
                  Text(
                    'See All',
                    style: regularTextStyle.copyWith(
                      color: greyColor,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductItem(
                    imageUrl: 'assets/product_1.png',
                    title: 'Classic Grey Hooded\nSweatshirt',
                    category: 'Clothes',
                    price: 90,
                  ),
                  ProductItem(
                    imageUrl: 'assets/product_2.png',
                    title: 'Classic Blue Baseball\nCap',
                    category: 'Clothes',
                    price: 86,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            headerAds(),
            ourProduct(),
            bestSeller(),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
