import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/text_style.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            width: 260,
            height: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TxtStyle(
                    title: "Free delivery for",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 21),
                TxtStyle(
                    title: "your first shop or order!",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 21),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle the tap
                      },
                      child: TxtStyle(title: "Shop now", color: Colors.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(1),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 10,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 140,
              child: Image.network(
                'https://images.deliveryhero.io/image/foodpanda/homepage/refresh-hero-home-kh.png',
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
