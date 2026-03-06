import '../models/category_model.dart';

class CategoryService {
  List<CategoryModel> getCategories() {
    return const [
      CategoryModel(
        id: "1",
        name: "Samsung",
        image: "assets/images/iphone.jpg",
      ),
      CategoryModel(
        id: "2",
        name: "iPhone",
        image: "assets/images/iphone.jpg",
      ),
      CategoryModel(
        id: "3",
        name: "Oppo",
        image: "assets/images/iphone.jpg",
      ),
      CategoryModel(
        id: "4",
        name: "Vivo",
        image: "assets/images/iphone.jpg",
      ),
      CategoryModel(
        id: "1",
        name: "Samsung",
        image: "assets/images/iphone.jpg",
      ),
      CategoryModel(
        id: "2",
        name: "iPhone",
        image: "assets/images/iphone.jpg",
      ),
      CategoryModel(
        id: "3",
        name: "Oppo",
        image: "assets/images/iphone.jpg",
      ),
      CategoryModel(
        id: "4",
        name: "Vivo",
        image: "assets/images/iphone.jpg",
      ),
    ];
  }
}