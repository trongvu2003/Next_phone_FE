import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key, required this.product});

  final ProductModel product;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  Color selectedColor = Colors.red;
  int quantity = 2;

  List<Color> colors = [
    Colors.red,
    Colors.black,
    Colors.grey.shade300,
    Colors.amber,
    Colors.blueGrey,
  ];

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 250,
                child: Image.asset(product.image),
                // fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite, color: Colors.red),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Apple iPhone 13 pro designed to last by the best",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        SizedBox(width: 5),
                        Text(
                          "4.8 ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(1000 reviews)",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      product.price.toString() + " VNĐ",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Divider(thickness: 2, color: Colors.grey),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "Color",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Quantity",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children:
                              colors.map((color) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedColor = color;
                                      });
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: color,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color:
                                              selectedColor == color
                                                  ? Colors.black
                                                  : Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                        ),
                        Container(
                          height: 40,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () {
                                  if (quantity > 1) {
                                    setState(() {
                                      quantity--;
                                    });
                                  }
                                },
                              ),

                              Text(
                                quantity.toString(),
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    quantity++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chi tiết sản phẩm",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 15),

                    Text(
                      "Sản phẩm nhận được rất tốt, đóng gói cẩn thận và giao hàng nhanh. "
                      "Thiết kế của điện thoại rất đẹp, màn hình sắc nét và hiệu năng "
                      "hoạt động mượt mà. Camera chụp ảnh rõ nét cả ngày lẫn đêm. "
                      "Pin sử dụng ổn định cho cả ngày với các tác vụ thông thường.\n\n"
                      "Ngoài ra, chất lượng hoàn thiện của máy rất cao cấp, cảm giác "
                      "cầm nắm chắc tay. Các ứng dụng chạy rất mượt, gần như không gặp "
                      "hiện tượng giật lag trong quá trình sử dụng.\n\n"
                      "Tổng thể đây là một sản phẩm rất đáng mua trong phân khúc "
                      "cao cấp. Nếu bạn đang tìm một chiếc điện thoại có hiệu năng "
                      "mạnh, camera đẹp và thiết kế sang trọng thì đây là lựa chọn "
                      "rất phù hợp.",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.grey[800],
                      ),
                    ),

                    SizedBox(height: 30),

                    Text(
                      "Nhận xét của khách hàng",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    ListTile(
                      leading: CircleAvatar(child: Icon(Icons.person)),
                      title: Text("Nguyễn Văn A"),
                      subtitle: Text("Sản phẩm rất tốt, đúng như mô tả."),
                      trailing: Icon(Icons.star, color: Colors.amber),
                    ),

                    ListTile(
                      leading: CircleAvatar(child: Icon(Icons.person)),
                      title: Text("Trần Minh B"),
                      subtitle: Text("Đóng gói kỹ, giao hàng nhanh."),
                      trailing: Icon(Icons.star, color: Colors.amber),
                    ),

                    ListTile(
                      leading: CircleAvatar(child: Icon(Icons.person)),
                      title: Text("Lê Thu C"),
                      subtitle: Text("Chất lượng rất ổn, sẽ ủng hộ lần sau."),
                      trailing: Icon(Icons.star, color: Colors.amber),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                    ),
                    child: const Text("Add to cart", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
