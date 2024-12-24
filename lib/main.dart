import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/food_screen.dart';
import 'package:test_clone_foodpenda/screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int navigationIndex = 0; // Set initial index to 0

  List<Widget> screenLists = const [
    FoodScreen(),
    SplashScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.white),
      home: Scaffold(
        body: screenLists[navigationIndex], // Display the selected screen
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: navigationIndex,
          onTap: (index) {
            setState(() {
              navigationIndex = index; // Update the selected screen index
            });
          },
          selectedItemColor: Colors.pink, // Set the selected item color to pink
          unselectedItemColor: Colors.grey, // Set the unselected item color to grey
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood),
              label: 'Food',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: 'Grocery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30,),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
