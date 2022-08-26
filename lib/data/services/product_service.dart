
import 'package:fluttertest/data/models/product_model.dart';

class ProductService {
  Future<List<Product>> getAllProduct() async {
  await Future.delayed(const Duration(seconds: 3));
    List<Product> listProducts=[];

    listProducts.add(Product(name: "Jordan Zoom", image: "assets/jordan_zoom.jpg",selected:false, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', listRelatedProduct: [], price: 18.50));
    listProducts.add(Product(name: "Nested Doorbell", image: "assets/nested_doobrel.jpg",selected:false, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', listRelatedProduct: [], price: 42.50));
    listProducts.add(Product(name: "Nest Camera", image: "assets/nest_camera.jpg",selected:false, listRelatedProduct: [], description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', price: 40.55));


    return listProducts;
  }
}
