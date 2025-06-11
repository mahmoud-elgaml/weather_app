import 'package:flutter/material.dart';
import 'package:weather_app/utils/colors.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: CircularProgressIndicator(
          color: kTextColor,
          backgroundColor: kTextColor.withAlpha(8),
          strokeWidth: 7,
          //
        ),
      ),
    );
  }
}
