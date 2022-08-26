import 'dart:convert';

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));

class Category {
  Category({
    required this.name,
    required this.image,
    required this.selected,
  });

  String name;
  String image;
  bool selected;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        name: json["name"],
        image: json["image"],
        selected: json["selected"],
      );

  @override
  String toString() {
    return 'Category{name: $name, image: $image, selected: $selected}';
  }
}
