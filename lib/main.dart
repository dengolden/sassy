import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sassy/pages/cart_page.dart';
import 'package:sassy/pages/home_page.dart';
import 'package:sassy/pages/main_page.dart';
import 'package:sassy/pages/splash_page.dart';
import 'package:sassy/service/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductService(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/main': (context) => MainPage(),
          '/home': (context) => HomePage(),
          '/cart': (context) => CartPage(),
        },
      ),
    );
  }
}
