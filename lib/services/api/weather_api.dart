import 'package:dio/dio.dart';
import 'package:weather_app/services/model/weather_model.dart';

class WeatherApi {
  static const _apiKey = '0795a621717d498386d113008230307';
  static const _baseUrl = 'https://api.weatherapi.com/v1';
  static final Dio _dio = Dio();

  static Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      final response = await _dio.get(
        '$_baseUrl/forecast.json',
        queryParameters: {'key': _apiKey, 'q': cityName, 'days': 3, 'aqi': 'no', 'alerts': 'no'},
      );

      return WeatherModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch weather: $e');
    }
  }

  static Future<WeatherModel> getWeatherByLocation({
    required double lat,
    required double lon,
  }) async {
    try {
      final response = await _dio.get(
        '$_baseUrl/forecast.json',
        queryParameters: {'key': _apiKey, 'q': '$lat,$lon', 'days': 3, 'aqi': 'no', 'alerts': 'no'},
      );

      return WeatherModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch weather by location: $e');
    }
  }
}
