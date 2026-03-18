import '../models/product_model.dart';

class ProductService {
  List<ProductModel> getProducts() {
    return const [
      ProductModel(
        id: "1",
        name: "iPhone 13",
        image: "assets/images/iphone.jpg",
        price: 46000,
      ),
      ProductModel(
        id: "2",
        name: "iPhone 13 Pro",
        image: "assets/images/iphone.jpg",
        price: 64600,
      ),
      ProductModel(
        id: "3",
        name: "Samsung S23",
        image: "assets/images/iphone.jpg",
        price: 35000,
      ),
      ProductModel(
        id: "4",
        name: "Oppo Reno 8",
        image: "assets/images/iphone.jpg",
        price: 20000,
      ),
      ProductModel(
        id: "1",
        name: "iPhone 13",
        image: "assets/images/iphone.jpg",
        price: 46000,
      ),
      ProductModel(
        id: "2",
        name: "iPhone 13 Pro",
        image: "assets/images/iphone.jpg",
        price: 64600,
      ),
      ProductModel(
        id: "3",
        name: "Samsung S23",
        image: "assets/images/iphone.jpg",
        price: 35000,
      ),
      ProductModel(
        id: "4",
        name: "Oppo Reno 8",
        image: "assets/images/iphone.jpg",
        price: 20000,
      ),
    ];
  }

}