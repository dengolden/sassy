import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sassy/models/product.dart';

class ProductService {
  static Future<List<Product>> fetchProducts() async {
    final response =
        await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));

    if (response.statusCode == 200) {
      //json.decode() => konversi json ke objek dart
      List<dynamic> data = json.decode(response.body);
      //Mapping dari variabel data yang menghasilkan List object Product
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      // Gagal mengambil data
      throw Exception('Failed to load products');
    }
  }
}
