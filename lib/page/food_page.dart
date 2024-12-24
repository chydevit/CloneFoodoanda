import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/components/navbar.dart';
// Import the BottomNavBar file

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF2B85),
      body: const Center(
        child: Text(
          'Food Page',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      bottomNavigationBar: const Navbar(currentIndex: 0),
    );
  }
}
