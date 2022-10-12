import 'package:fluttertest/data/models/category_model.dart';
import 'package:fluttertest/data/services/category_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_list_category.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
class CategoryServiceTest extends Mock implements CategoryService {}

@GenerateMocks([CategoryServiceTest])
void main() {
  group('Category', () {
    late MockCategoryServiceTest categoryService;
    setUpAll(() {
      categoryService = MockCategoryServiceTest();
    });
    test('returns list Of Category if the Future completes successfully',
        () async {
      final model = <Category>[];
      when(categoryService.getAllCategory()).thenAnswer((_) async {
        return model;
      });
      final res = await categoryService.getAllCategory();
      expect(res, isA<List<Category>>());
      expect(res, model);
    });

    test('test getAllCategory throws Exception', () {
      when(categoryService.getAllCategory()).thenAnswer((_) async {
        throw Exception();
      });
      final res = categoryService.getAllCategory();
      expect(res, throwsException);
    });
  });
}
