import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sassy/models/product.dart';

class ProductService extends ChangeNotifier {
  final List<Product> _products = [];

  List<Product> get products => _products;

  Future<List<Product>> fetchProducts() async {
    final response =
        await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));

    if (response.statusCode == 200) {
      //json.decode() => konversi json ke objek dart
      List<dynamic> data = json.decode(response.body);
      _products.addAll(data.map((json) => Product.fromJson(json)).toList());
      //Mapping dari variabel data yang menghasilkan List object Product
      notifyListeners();
      return _products;
    } else {
      // Gagal mengambil data
      throw Exception('Failed to load products');
    }
  }
}
