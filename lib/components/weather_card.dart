import 'package:flutter/material.dart';

class WeatherCard extends StatefulWidget {
  const WeatherCard({super.key});

  @override
  State<WeatherCard> createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
   mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('data'),
           Text('data'),
           Icon(Icons.sunny
           
           ,
           size: 50,
           color: Colors.yellow,
           //
           ),
            Text('data'),
          //
        ],
      ),
    );
  }
}