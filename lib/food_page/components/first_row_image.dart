
import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/food_page/components/text_style.dart';

Widget FirstRowImage({required String imageName, String title = '',String title2 = '', double w = 80, double h = 150}) {
  return Container(
    width: w,
    height: h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/' + imageName, fit: BoxFit.cover,),
        SizedBox(height: 5,),
        TxtStyle(title: title, color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        TxtStyle(title: title2, color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold)
      ],
    )
  );
}