
import 'package:flutter/material.dart';


class ThirdRowNavigator extends StatelessWidget {
  final String image;
  final String name;
  final String rate;
  final String caption;
  final String time;
  final String deliveryPrice;

  const ThirdRowNavigator({
    Key? key,
    required this.image,
    required this.name,
    required this.rate,
    required this.caption,
    required this.time,
    required this.deliveryPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(image, width: double.infinity, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text("Rating: $rate"),
                  const SizedBox(height: 8),
                  Text(caption),
                  const SizedBox(height: 8),
                  Text("Delivery Time: $time min"),
                  const SizedBox(height: 8),
                  Text("Delivery Price: $deliveryPrice"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}