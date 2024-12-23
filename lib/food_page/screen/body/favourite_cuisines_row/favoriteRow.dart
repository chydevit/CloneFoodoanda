import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/image_url.dart';
import 'package:test_clone_foodpenda/food_page/components/text_style.dart';
import 'package:test_clone_foodpenda/food_page/screen/body/favourite_cuisines_row/customize_image.dart';

class FavouriteRow extends StatelessWidget {
  final FavouriteCuisineImageUrl favouriteContainer =
      FavouriteCuisineImageUrl();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: TxtStyle(
            title: "Your favourite cuisines",
            fontWeight: FontWeight.bold,
            fontSize: 21,
          ),
        ),
        SizedBox(height: 20),
        Container(
          height: 140, // Define fixed height for ListView
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            itemCount: favouriteContainer.count.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: CustomizeImage(
                  image: favouriteContainer.image_name['image'][index],
                  type: favouriteContainer.image_name['type'][index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
