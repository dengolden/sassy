import 'package:flutter/material.dart';

import 'package:sassy/pages/onboarding_page.dart';
import 'package:sassy/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 2000), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => OnBoardingPage(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 362,
              ),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            Text(
              'SASSY.',
              style: boldTextStyle.copyWith(
                fontSize: 40,
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
