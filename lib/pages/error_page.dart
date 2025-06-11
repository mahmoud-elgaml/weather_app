import 'package:flutter/material.dart';
import 'package:weather_app/utils/colors.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'oops something wrong',
            style: TextStyle(
              fontSize: 22,
              color: kTextColor,
              //
            ),
          ),
          Text(
            'try again, later',
            style: TextStyle(
              fontSize: 22,
              color: kTextColor,
              //
            ),
          ),
          //
        ],
      ),
    );
  }
}
