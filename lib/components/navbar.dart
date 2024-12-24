import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/page/account_page.dart';
import 'package:test_clone_foodpenda/page/food_page.dart';


class Navbar extends StatelessWidget {
  final int currentIndex;

  const Navbar({super.key, required this.currentIndex});

  void _onItemTapped(BuildContext context, int index) {
    if (index == currentIndex) return; // Prevent unnecessary navigation

    // Navigate to the appropriate page
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>  FoodPage()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Scaffold(
            body: Center(child: Text('Grocery Page')),
          )),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Scaffold(
            body: Center(child: Text('Search Page')),
          )),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AccountPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => _onItemTapped(context, index),
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFFFF2B85),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.fastfood), label: "Food"),
          BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory), label: "Grocery"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "Account"),
        ],
      ),
    );
  }
}
