import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/image_url.dart';
import 'package:test_clone_foodpenda/food_page/screen/body/third_row_item/third_row_custom.dart';
import 'package:test_clone_foodpenda/food_page/screen/body/third_row_item/third_row_navigator.dart';

class ThirdRow extends StatefulWidget {
  const ThirdRow({super.key});

  @override
  State<ThirdRow> createState() => _ThirdRowState();
}

class _ThirdRowState extends State<ThirdRow> {
  List<bool> heartPressed = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    final ThirdRowImageUrl foodDetail = ThirdRowImageUrl();

    return Container(
      height: 255,
      width: double.infinity,
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
                  builder: (context) => ThirdRowNavigator(
                    image: foodDetail.foodDescription['image'][index],
                    name: foodDetail.foodDescription['name'][index],
                    rate: foodDetail.foodDescription['rate'][index],
                    caption: foodDetail.foodDescription['caption'][index],
                    time: foodDetail.foodDescription['time'][index],
                    deliveryPrice:
                    foodDetail.foodDescription['deliveryPrice'][index],
                  ),
                ),
              );
            },
            child: ThirdRowCustom( // use ThirdRowCustom class from components folder
              image: foodDetail.foodDescription['image'][index],
              name: foodDetail.foodDescription['name'][index],
              rate: foodDetail.foodDescription['rate'][index],
              caption: foodDetail.foodDescription['caption'][index],
              time: foodDetail.foodDescription['time'][index],
              deliveryPrice: foodDetail.foodDescription['deliveryPrice'][index],
              heartButtonPressed: heartPressed[index],
            ),
          );
        },
      ),
    );
  }
}


