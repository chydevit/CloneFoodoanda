import 'package:flutter/material.dart';
import 'account_page.dart'; // Import the AccountPage file

class FoodPage extends StatefulWidget {
  FoodPage({super.key});

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF2B85),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBody() {
    // You can add content for each page here based on _selectedIndex
    return Container();
  }

  Widget _buildBottomNavBar() {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // fixed show label
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected index
          });

          // Navigate to the Account page when Account tab is selected
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountPage()),
            );
          }
        },
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFFFF2B85),
        unselectedItemColor: Colors.grey,
        items: [
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
