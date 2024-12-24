import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/text_style.dart';

class MealForOneCustomize extends StatefulWidget {

  final String image;
  final String name;
  final String rate;
  final String title;
  final String price;

  const MealForOneCustomize({
    Key? key,
    required this.image,
    required this.name,
    required this.rate,
    required this.title,
    required this.price
  }) : super(key: key);

  @override
  State<MealForOneCustomize> createState() => _MealForOneCustomizeState();
}

class _MealForOneCustomizeState extends State<MealForOneCustomize> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        width: 170,
        height: 300,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  widget.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      child: Image.network(
                        'https://kfc.lt/wp-content/uploads/2022/09/5-hot-wings-meal.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        width: 90,
                        child: Text(
                          widget.name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.grey),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.orange,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: TxtStyle(title: widget.rate, color: Colors.grey),
                    )
                  ],
                ),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  width: 130,
                  // height: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TxtStyle(
                          title: widget.title,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                      TxtStyle(
                          title: "\$ ${widget.price}",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                      Row(
                        children: [
                          Icon(
                            Icons.motorcycle,
                            size: 15,
                          ),
                          TxtStyle(
                              title: 'Free',
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.pink)
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ))
          ],
        ));
  }
}
