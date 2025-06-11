import 'package:flutter/material.dart';
import 'package:weather_app/utils/colors.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: kTextColor.withAlpha(16),
            ),
            child: Center(
              child: TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: kTextColor,
                decoration: InputDecoration(
                  hintText: 'Search City',
                  suffixIcon: Icon(Icons.search_outlined, size: 28, color: kTextColor),
                  hintStyle: TextStyle(color: kTextColor),
                  border: InputBorder.none,
                  //
                ),
              ),
            ),
            //
          ),
        ),
        //
      ],
    );
  }
}
