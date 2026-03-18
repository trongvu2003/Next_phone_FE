import 'package:flutter/material.dart';
import 'package:nextphone/views/account/account_page.dart';
import 'package:nextphone/views/wallet/wallet_page.dart';
import '../widgets/bottom_nav_bar.dart';
import 'home/home_page.dart';
import 'cart/cart_page.dart';
import 'order/order_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomePage(),    // 0
    const CartPage(),    // 1
    const OrderPage(),   // 2
    const WalletPage(),  // 3
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: MainBottomBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
