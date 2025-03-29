import 'package:blinkit/repository/screens/cart/cartscreen.dart';
import 'package:blinkit/repository/screens/category/categoryscreen.dart';
import 'package:blinkit/repository/screens/home/homescreen.dart';
import 'package:blinkit/repository/screens/print/printscreen.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    Homescreen(),
    Cartscreen(),
    CategoryScreen(),
    Printscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // ✅ Fix: currentIndex add kiya
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "home.png"), label: "Home"), // ✅ Fix: Spaces hata diye
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "shopping-bag.png"), label: "Cart"),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "category.png"), label: "Category"),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "printer.png"), label: "Printer"),
        ],
      ),
    );
  }
}
