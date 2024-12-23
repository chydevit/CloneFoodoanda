import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/screen/splash_screen.dart';
// import 'package:test_clone_foodpenda/basic_moule/basic_app.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "FoodPenda UI Clone",
        home: SplashScreen());
  }
}
