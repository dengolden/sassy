import 'package:http/http.dart' as http;

void fetchData() async {
  final url = Uri.parse('https://api.escuelajs.co/api/v1/products');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      print('Data produk: ${response.body}');
    } else {
      print('Gagal mendapatkan data produk: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
