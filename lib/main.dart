import 'package:flutter/material.dart';
import 'package:weather_app/pages/home.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        
        //
      ),
      home: const Home(),
    );
  }
}
