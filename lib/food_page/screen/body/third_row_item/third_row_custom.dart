import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/food_detail.dart';
import 'package:test_clone_foodpenda/food_page/components/text_style.dart';

class ThirdRowCustom extends StatefulWidget {
  final String image;
  final String name;
  final String rate;
  final String caption;
  final String time;
  final String deliveryPrice;
  final bool heartButtonPressed;

  // Constructor
  const ThirdRowCustom({
    Key? key,
    required this.image,
    required this.name,
    required this.rate,
    required this.caption,
    required this.time,
    required this.deliveryPrice,
    required this.heartButtonPressed,
  }) : super(key: key);

  @override
  State<ThirdRowCustom> createState() => _ThirdRowCustomState();
}

class _ThirdRowCustomState extends State<ThirdRowCustom> {
  late bool heartButtonPressed;

  @override
  void initState() {
    super.initState();
    heartButtonPressed = widget.heartButtonPressed; // Initialize mutable state
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        width: 300,
        height: 235,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 0.1,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  child: Image.network(
                    widget.image,
                    width: 300,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 5,
                  top: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    width: 35,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              !heartButtonPressed
                                  ? 'Added to favorites'
                                  : 'Removed from favorites.',
                              style: const TextStyle(fontSize: 16),
                            ),
                            duration: const Duration(seconds: 2),
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            behavior: SnackBarBehavior.floating,
                            margin: const EdgeInsets.only(
                                bottom: 15, left: 15, right: 15),
                          ),
                        );

                        setState(() {
                          heartButtonPressed =
                          !heartButtonPressed; // Update state
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: EdgeInsets.zero,
                      ),
                      child: Icon(
                        heartButtonPressed
                            ? Icons.favorite
                            : Icons.favorite_outline,
                        size: 20,
                        color: heartButtonPressed
                            ? Colors.red.shade900
                            : Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: FoodDetail(name: widget.name, rate: widget.rate, caption: widget.caption, time: widget.time, deliveryPrice: widget.deliveryPrice)
              ),
            ),
          ],
        )
    );
  }
}
