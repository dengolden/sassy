import 'package:flutter/material.dart';
import 'package:sassy/widgets/cart_item.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget cartItem() {
      return Column(
        children: [
          SizedBox(height: 60),
          CartItem(
            imageUrl: 'assets/product_1.png',
            title: 'Classic Grey Hooded\nSweatshirt',
            category: 'Clothes',
            price: 90,
          ),
          SizedBox(
            height: 25,
          ),
          CartItem(
            imageUrl: 'assets/product_2.png',
            title: 'Classic Blue Baseball\nCap',
            category: 'Clothes',
            price: 86,
            itemCount: 2,
          ),
          SizedBox(
            height: 25,
          ),
          CartItem(
            imageUrl: 'assets/product_2.png',
            title: 'Classic Blue Baseball\nCap',
            category: 'Clothes',
            price: 86,
            itemCount: 5,
          ),
        ],
      );
    }

    return Container(
      height: 350,
      child: ListView(
        children: [
          cartItem(),
        ],
      ),
    );
  }
}
