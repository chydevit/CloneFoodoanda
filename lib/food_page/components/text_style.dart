
import 'package:flutter/material.dart';

Widget TxtStyle({required String title, FontWeight fontWeight = FontWeight.normal, Color color = Colors.black, double fontSize = 14}) {
  return Text(
    title,
    style: TextStyle(
        fontWeight: fontWeight,
        color: color,
        fontSize: fontSize),
  );
}