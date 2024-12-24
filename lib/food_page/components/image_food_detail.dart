import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/food_detail.dart';

class ImageFoodDetail extends StatefulWidget {
  //Frame of the Container
  final double wholeHeight;
  final double wholeWidth;
  final double imageHeight;
  final double imageWidth;

  //properties
  final String image;
  final String name;
  final String rate;
  final String caption;
  final String time;
  final String deliveryPrice;

  const ImageFoodDetail(
      {super.key,
        //Frame of Container
      required this.wholeHeight,
      required this.wholeWidth,
      required this.imageHeight,
      required this.imageWidth,

        //properties
        required this.image,
        required this.name,
        required this.rate,
        required this.caption,
        required this.time,
        required this.deliveryPrice

      });

  @override
  State<ImageFoodDetail> createState() => _ImageFoodDetailState();
}

class _ImageFoodDetailState extends State<ImageFoodDetail> {
  @override
  Widget build(BuildContext context) {

    return Container(
            width: widget.wholeWidth,
            height: widget.wholeHeight,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 0.2,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  child: Image.network(
                    widget.image,
                    width: widget.imageWidth,
                    height: widget.imageHeight,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: FoodDetail(
                      name: widget.name,
                      rate: widget.rate,
                      caption: widget.caption,
                      time: widget.time,
                      deliveryPrice: widget.deliveryPrice),
                )
              ],
            )
    );
  }
}
