import 'package:flutter/material.dart';
import 'package:weather_app/services/api/weather_api.dart';
import 'package:weather_app/services/model/weather_model.dart';
import 'package:weather_app/utils/colors.dart';
import 'package:weather_app/widgets/custom_search_field.dart';
import 'package:weather_app/widgets/weather_body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  WeatherModel? weatherModel;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    weatherModel = await WeatherApi().getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Text(
          'Weather',
          style: TextStyle(
            color: kTextColor,
            //
          ),
        ),
        centerTitle: true,

        //
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: 20,
          vertical: 20,
          //
        ),
        child: Column(
          children: [
            CustomSearchField(),
            const SizedBox(height: 60),
            WeatherBody(),
            //
          ],
          //
        ),
      ),
    );
  }
}
