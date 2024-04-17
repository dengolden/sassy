import 'package:flutter/material.dart';
import 'package:sassy/models/product.dart';
import 'package:sassy/pages/detail_page.dart';
import 'package:sassy/service/api_service.dart';
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
            ),
            Text(
              'SASSY.',
              style: semiBoldTextStyle.copyWith(
                fontSize: 25,
                color: blackColor,
              ),
            ),
            CustomCircleButton(
              imageUrl: 'assets/bell_icon.png',
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
            FutureBuilder<List<Product>>(
              future: ProductService.fetchProducts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  String errorMessage = 'An error occurred';
                  if (snapshot.error is String) {
                    errorMessage = snapshot.error.toString();
                  } else if (snapshot.error is Exception) {
                    errorMessage = snapshot.error.toString();
                  }
                  return Text('Error: $errorMessage');
                } else {
                  List<Product> products = snapshot.data!;
                  return Container(
                    height: 255,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: products.length,
                      itemBuilder: (BuildContext context, int index) {
                        Product product = products[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  product: products[index],
                                ),
                              ),
                            );
                          },
                          child: ProductItem(
                            product: product,
                          ),
                        );
                      },
                    ),
                  );
                }
              },
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
            FutureBuilder<List<Product>>(
              future: ProductService.fetchProducts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  String errorMessage = 'An error occurred';
                  if (snapshot.error is String) {
                    errorMessage = snapshot.error.toString();
                  } else if (snapshot.error is Exception) {
                    errorMessage = snapshot.error.toString();
                  }
                  return Text('Error: $errorMessage');
                } else {
                  List<Product> products = snapshot.data!;
                  return Container(
                    height: 255,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: products.length,
                      itemBuilder: (BuildContext context, int index) {
                        Product product = products[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  product: products[index],
                                ),
                              ),
                            );
                          },
                          child: ProductItem(
                            product: product,
                          ),
                        );
                      },
                    ),
                  );
                }
              },
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
