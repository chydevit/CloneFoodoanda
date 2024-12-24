import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/food_detail.dart';
import 'package:test_clone_foodpenda/food_page/components/image_food_detail.dart';
import 'package:test_clone_foodpenda/food_page/components/image_url.dart';
import 'package:test_clone_foodpenda/food_page/components/search_button.dart';
import 'package:test_clone_foodpenda/food_page/components/text_style.dart';
import 'package:test_clone_foodpenda/food_page/screen/body/explore_restaurant.dart';
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
  final ExploreRestaurantsItem exploreRestaurantsItem = ExploreRestaurantsItem();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading:const Icon(
          Icons.location_on,
          color: Colors.white,
        ),
        centerTitle: false,
        title: const Text(
          "National Road 3",
          style:  TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
            onPressed: () {},
            icon:const Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon:const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
          ),
        ],
        bottom:const  SearchButton(),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              //Header
              Container(
                color: Colors.pink,
                child: const Header(),
              ),

              //First Row
             const FirstRow(),

              //Second Row
               Container(
                height: 230,
                width: width,
                child: const SecondRow()
              ),

              //Third Row(Order again)
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 320,
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
                   const Expanded(child: ThirdRow())
                  ],
                ),
              ),

              //Fourth Row(Meal for one up to 30% off)
              Container(
                height: 420,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30),),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30),),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),),
                            child:  Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/meal.jpg', fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 15),

                          // Meal for one Row

                          RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15),  // Default style
                              children: [
                                TextSpan(
                                  text: 'Meal for one',
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
                                ),
                                TextSpan(text: ' '),  // Space between the texts
                                TextSpan(
                                  text: 'up to 30% off',
                                  style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 15),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),

                      // Meal for one
                     const MealForOneRow(),
                    ],
                  ),
                ),
              ),

              // Five Row (Your favourite cuisines)
              Container(
                  color: Colors.white,
                  width: width,
                  height: 190,
                  child: FavouriteRow()
              ),

              Container(
                margin: const EdgeInsets.all(10),
                color: Colors.white,
                width: width,
                height: height * 2 ,
                child: const ExploreRestaurant(),
              )
            ],
          ),
        )
      )
    );
  }
}
