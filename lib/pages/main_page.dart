import 'package:flutter/material.dart';

import 'package:sassy/pages/home_page.dart';
import 'package:sassy/shared/theme.dart';
import 'package:sassy/widgets/custom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
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
                isActive: true,
              ),
              CustomNavigationItem(
                outlineImageUrl: 'assets/cart_icon.png',
                filledImageUrl: 'assets/cart_icon_filled.png',
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
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            buildContent(),
            customBottomNavigation(),
          ],
        ),
      ),
    );
  }
}
