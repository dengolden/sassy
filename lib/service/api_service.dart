import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sassy/models/product.dart';

class ProductService {
  static Future<List<Product>> fetchProducts() async {
    final response =
        await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Product.fromMap(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
