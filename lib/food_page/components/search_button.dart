import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget implements PreferredSizeWidget  {
  const SearchButton({super.key});

  @override
  Size get preferredSize => Size.fromHeight(60.0);
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for restaurant and groceries',
          border: InputBorder.none,
          contentPadding:
          EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          prefixIcon: IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
