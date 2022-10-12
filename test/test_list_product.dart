import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertest/data/models/product_model.dart';
import 'package:fluttertest/data/services/product_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'test_list_product.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
class ProductServiceTest extends Mock implements ProductService {}

@GenerateMocks([ProductServiceTest])
void main() {
  group('Product', () {
    late MockProductServiceTest productService;
    setUpAll(() {
      productService = MockProductServiceTest();
    });

    test('returns a List of products if the Future completes successfully',
        () async {
      final model = <Product>[];
      when(productService.getAllProduct()).thenAnswer((_) async {
        return model;
      });
      final res = await productService.getAllProduct();
      expect(res, isA<List<Product>>());
      expect(res, model);
    });

    test('test getAllProduct throws Exception', () {
      when(productService.getAllProduct()).thenAnswer((_) async {
        throw Exception();
      });
      final res = productService.getAllProduct();
      expect(res, throwsException);
    });
  });
}
