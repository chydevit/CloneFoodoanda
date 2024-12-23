
import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/image_url.dart';
import 'package:test_clone_foodpenda/food_page/screen/body/meal_for_one_row/meal_for_one_customize.dart';
import 'package:test_clone_foodpenda/food_page/screen/body/meal_for_one_row/meal_for_one_navigator.dart';


class MealForOneRow extends StatefulWidget {
  const MealForOneRow({super.key});

  @override
  State<MealForOneRow> createState() => _MealForOneRowState();
}

class _MealForOneRowState extends State<MealForOneRow> {

  final MealForOneImageUrl foodDetail = MealForOneImageUrl();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        itemCount: foodDetail.count.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MealForOneNavigator(),
                ),
              );
            },
            child: MealForOneCustomize( // use ThirdRowCustom class from components folder
              image: foodDetail.foodDescription['image'][index],
              name: foodDetail.foodDescription['name'][index],
              rate: foodDetail.foodDescription['rate'][index],
              title: foodDetail.foodDescription['title'][index],
              price: foodDetail.foodDescription['price'][index],
            ),
          );
        },
      ),
    );
  }
}
