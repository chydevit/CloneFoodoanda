
import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/image_food_detail.dart';
import 'package:test_clone_foodpenda/food_page/components/image_url.dart';

class ExploreRestaurant extends StatelessWidget {
  const ExploreRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    final ExploreRestaurantsItem exploreRestaurantsItem = ExploreRestaurantsItem();

    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: exploreRestaurantsItem.count.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 320,
            child: ImageFoodDetail(
              wholeWidth: double.infinity,
              wholeHeight: 310,
              imageWidth: double.infinity,
              imageHeight: 220,
              image: exploreRestaurantsItem.foodDescription['image'][index],
              name: exploreRestaurantsItem.foodDescription['name'][index],
              rate: exploreRestaurantsItem.foodDescription['rate'][index],
              caption: exploreRestaurantsItem.foodDescription['caption'][index],
              time: exploreRestaurantsItem.foodDescription['time'][index],
              deliveryPrice: exploreRestaurantsItem.foodDescription['deliveryPrice'][index],
            ),
          );
        }
    );
  }
}
