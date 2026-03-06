import '../models/product_model.dart';
import '../models/category_model.dart';
import '../services/product_service.dart';
import '../services/category_service.dart';

class HomeViewModel {

  final ProductService _productService = ProductService();
  final CategoryService _categoryService = CategoryService();

  List<ProductModel> products = [];
  List<CategoryModel> categories = [];

  void loadData() {
    products = _productService.getProducts();
    categories = _categoryService.getCategories();
  }
}