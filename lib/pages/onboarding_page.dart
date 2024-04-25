import 'package:flutter/material.dart';
import 'package:sassy/shared/theme.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 513,
                padding: EdgeInsets.symmetric(
                  horizontal: 28,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/onboarding_bg.png',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 215,
                ),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      backgroundColor,
                      backgroundColor.withOpacity(0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 55),
          Column(
            children: [
              Text(
                'Find Coziness\nin Your Fit',
                style: mediumTextStyle.copyWith(
                  fontSize: 28,
                  color: blackColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Add some Coziness at Your\nFit With Sassy Now!',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                  color: greyColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  color: greenColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/main');
                  },
                  icon: Icon(
                    Icons.arrow_forward_rounded,
                  ),
                  color: backgroundColor,
                  iconSize: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
