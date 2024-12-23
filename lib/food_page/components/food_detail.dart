
import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/text_style.dart';

class FoodDetail extends StatelessWidget {
  //const FoodDetail({super.key});

  final String name;
  final String rate;
  final String caption;
  final String time;
  final String deliveryPrice;

  const FoodDetail({
    super.key,
    required this.name,
    required this.rate,
    required this.caption,
    required this.time,
    required this.deliveryPrice,

  });
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TxtStyle(title: name.toUpperCase(), fontWeight: FontWeight.bold),
            SizedBox(width: 5,),
            Icon(Icons.star, color: Colors.orange,),
            TxtStyle(title: "5.0", fontSize: 12, fontWeight: FontWeight.bold),
            TxtStyle(title: rate, fontSize: 12, color: Colors.grey)
          ],
        ),

        TxtStyle(title: caption, color: Colors.black.withOpacity(0.8) ),
        Row(children: [
          Icon(Icons.access_time, size: 15),
          SizedBox(width: 5,),
          Text(time+ " min"),
          SizedBox(width: 15,),
          Icon(Icons.motorcycle, size: 15,),
          TxtStyle(title: deliveryPrice, color: Colors.black.withOpacity(0.8))
        ],
        )
      ],
    );
  }
}
