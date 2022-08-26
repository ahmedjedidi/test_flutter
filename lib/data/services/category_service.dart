import 'package:fluttertest/data/models/category_model.dart';

class CategoryService{
  Future<List<Category>> getAllCategory() async {
    await Future.delayed(const Duration(seconds: 3));
    List<Category> listCategory=[];

    listCategory.add(Category(name: "Best Deal", image: "assets/best_price.png",selected:true));
    listCategory.add(Category(name: "Life Style", image: "assets/lifestyle.png",selected:false));
    listCategory.add(Category(name: "Furniture", image: "assets/furniture.png",selected:false));
    listCategory.add(Category(name: "Kitchen", image: "assets/kitchen.png",selected:false));


    return listCategory;
  }
}