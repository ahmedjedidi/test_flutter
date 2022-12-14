import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

class Product {
  Product({
    required this.name,
    required this.price,
    required this.image,
    required this.selected,
    required this.description,
  });

  String name;
  double price;
  String image;
  bool selected;
  String description;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json["name"],
        price: json["price"],
        image: json["image"],
        selected: json["selected"].obs,
        description: json["description"],
      );
}
