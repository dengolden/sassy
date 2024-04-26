// Creating the Product Class
class Product {
  final int id;
  final String title;
  final int price;
  final String description;
  final List<String> images;
  final Category category;

  // Product Constructor
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
    required this.category,
  });

  // JSON Parsing to Object
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      //Mapping JSON to List of Strings
      images: List<String>.from(json['images']),
      //Using fromJson() from Json Parsing in Category Class
      category: Category.fromJson(json['category']),
    );
  }
}

// Nested Object
class Category {
  final int id;
  final String name;
  final String image;

  Category({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}
