import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/food_detail.dart';
import 'package:test_clone_foodpenda/food_page/components/image_food_detail.dart';
import 'package:test_clone_foodpenda/food_page/components/search_button.dart';
import 'package:test_clone_foodpenda/food_page/components/text_style.dart';
import 'package:test_clone_foodpenda/food_page/screen/body/favourite_cuisines_row/favoriteRow.dart';
import 'package:test_clone_foodpenda/food_page/screen/body/first_row.dart';
import 'package:test_clone_foodpenda/food_page/screen/body/header.dart';
import 'package:test_clone_foodpenda/food_page/screen/body/meal_for_one_row/meal_for_one_row.dart';
import 'package:test_clone_foodpenda/food_page/screen/body/second_row.dart';
import 'package:test_clone_foodpenda/food_page/screen/body/third_row_item/third_row.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  final int count = 10;
  bool heartPressed = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.location_on,
          color: Colors.white,
        ),
        centerTitle: false,
        title: Text(
          "National Road 3",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
          ),
        ],
        bottom: SearchButton(),
      ),
      body: Container(
        width: width,
        height: height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  color: Colors.pink,
                  width: width,
                  height: height / 5,
                  child: Header()),
              Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            color: Colors.white,
                            child: FirstRow()),
                        Divider(),
                        Container(
                          height: 230,
                          width: width,
                          child: SecondRow(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 300,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: TxtStyle(
                                    title: "Order again",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              ThirdRow()
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 420,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 20,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            30), // Ensure this matches the parent
                                      ),
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        child: Image.asset('assets/meal.jpg',
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    SizedBox(width: 15),

                                    // Meal for one Row
                                    TxtStyle(
                                      title: "Meal for one",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    SizedBox(width: 10),
                                    TxtStyle(
                                      title: "up to 30% off",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.pink,
                                    ),
                                  ],
                                ),

                                // Meal for one
                                MealForOneRow(),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            color: Colors.white,
                            width: width,
                            height: 190,
                            child: FavouriteRow()),

                        Container(
                          width: width,
                          height: 6,
                          color: Colors.grey.shade200,
                        ),

                        //Explor restaurants
                        Container(
                          margin: EdgeInsets.all(10),
                          width: width,
                          height: height,
                          color: Colors.white,
                          child: ImageFoodDetail(
                            wholeWidth: width ,
                            wholeHeight: 310,
                            imageWidth: width,
                            imageHeight: 220,
                            image: 'https://assets.surlatable.com/m/15a89c2d9c6c1345/72_dpi_webp-REC-283110_Pizza.jpg',
                            name: 'KFC',
                            rate: '1000',
                            caption: 'Chicken fried',
                            time: '20-30',
                            deliveryPrice: '2',
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
