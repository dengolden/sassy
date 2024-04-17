import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sassy/models/product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem(
    this.product, {
    this.quantity = 1,
  });
}

class Cart extends ChangeNotifier {
  final List<CartItem> products = [];

  double get totalPrice => products.fold(
      0.0, (sum, product) => sum + product.product.price * product.quantity);

  void addToCart(Product product) {
    final existingIndex =
        products.indexWhere((CartItem) => CartItem.product.id == product.id);
    if (existingIndex >= 0) {
      products[existingIndex].quantity++;
    } else {
      products.add(
        CartItem(product),
      );
    }
    notifyListeners();
  }

  void removeFromCart(Product product) {
    final index =
        products.indexWhere((CartItem) => CartItem.product.id == product.id);
    if (index >= 0) {
      products.removeAt(index);
      notifyListeners();
    }
  }

  void clearCart() {
    products.clear();
    notifyListeners();
  }
}

final cartProvider = ChangeNotifierProvider((ref) => Cart());
