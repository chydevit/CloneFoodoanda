
import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/first_row_image.dart';

class FirstRow extends StatefulWidget {
  const FirstRow({super.key});

  @override
  State<FirstRow> createState() => _FirstRowState();
}

class _FirstRowState extends State<FirstRow> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 10, right: 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FirstRowImage(
              imageName: 'offers_image.png',
              title: "Offers"),
          SizedBox(
            width: 30,
          ),
          FirstRowImage(
              imageName: 'restaurant.jpg',
              title: "New",
              title2: "restaurants"),
          SizedBox(
            width: 30,
          ),
          FirstRowImage(
              imageName: 'pickup.png', title: "Pick-up"),
          SizedBox(
            width: 30,
          ),
          FirstRowImage(
              imageName: 'send.jpg', title: "pandasends"),
          SizedBox(
            width: 30,
          ),
          FirstRowImage(
              imageName: 'voucher.jpg',
              title: "Vouchers"),
          SizedBox(
            width: 30,
          ),
          FirstRowImage(
              imageName: 'meal.jpg',
              title: "Meal for one"),
          SizedBox(
            width: 30,
          ),
          FirstRowImage(
              imageName: 'top_restaurant.jpg',
              title: "Top",
              title2: "restaurants")
        ],
      ),
    );
  }
}
