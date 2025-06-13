import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/services/model/weather_model.dart';

class WeatherApi {
  // https://api.weatherapi.com/v1/forecast.json?key=0795a621717d498386d113008230307&q=London&days=3&aqi=yes&alerts=no
  final String apiKey = '0795a621717d498386d113008230307';
  final String baseUrl = 'https://api.weatherapi.com/v1';
  
  final dio = Dio();

  Future<WeatherModel> getWeather() async {
    final response = await dio.get(
      'https://api.weatherapi.com/v1/forecast.json',
      queryParameters: {
        'key': apiKey,
        'q': 'cairo',
        'days': 3,
        'aqi': 'no',        
        //
      },

    );
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    log(weatherModel.status);
    return weatherModel;
  }
}
