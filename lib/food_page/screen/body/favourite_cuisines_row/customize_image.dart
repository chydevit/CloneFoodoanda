import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/text_style.dart';

class CustomizeImage extends StatelessWidget {
  final String image;
  final String type;

  const CustomizeImage({super.key, required this.image, required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              image,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.image_not_supported, size: 50);
              },
            ),
          ),
        ),
        SizedBox(height: 5),
        TxtStyle(title: type, fontWeight: FontWeight.bold),
      ],
    );
  }
}
