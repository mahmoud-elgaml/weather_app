import 'package:flutter/material.dart';
import 'package:weather_app/components/weather_card.dart';
import 'package:weather_app/utils/colors.dart';

class WeatherBody extends StatefulWidget {
  const WeatherBody({super.key});

  @override
  State<WeatherBody> createState() => _WeatherBodyState();
}

class _WeatherBodyState extends State<WeatherBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.location_pin, size: 28, color: Colors.white),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Egypt', style: TextStyle(fontSize: 24, color: kTextColor)),
                Text('Cairo', style: TextStyle(fontSize: 24, color: kTextColor)),
              ],
            ),
            //
          ],
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(children: [Text('Sunny'), Text('30')]),
            const SizedBox(width: 20),
            Icon(Icons.sunny, size: 60, color: kTextColor),
          ],
        ),
        const SizedBox(height: 60),
        Row(
          children: [
            WeatherCard(),
            WeatherCard(),

            WeatherCard(),

            //
          ],
          //
        ),
      ],
    );
  }
}
