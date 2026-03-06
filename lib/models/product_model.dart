class ProductModel {
  final String id;
  final String name;
  final String image;
  final double price;

  const ProductModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      price: (json['price'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "image": image, "price": price};
  }
}
