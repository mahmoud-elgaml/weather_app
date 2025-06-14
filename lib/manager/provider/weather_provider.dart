import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/helper/location_helper.dart';
import 'package:weather_app/manager/provider/weather_state.dart';
import 'package:weather_app/services/api/weather_api.dart';

class WeatherNotifier extends StateNotifier<WeatherState> {
  WeatherNotifier() : super(InitialState());

  Future<void> getWeatherByLocation() async {
    try {
      state = WeatherLoading();
      final position = await LocationHelper.getCurrentLocation();
final weather = await WeatherApi.getWeatherByLocation(
        lat: position.latitude,
        lon: position.longitude,
      );


      state = WeatherSuccess(weather);
    } catch (e) {
      state = WeatherFailure(error: e.toString());
    }
  }

  Future<void> getWeather({required String cityName}) async {
    try {
      state = WeatherLoading();
      final weather = await WeatherApi.getWeather(cityName: cityName);
      state = WeatherSuccess(weather);
    } catch (e) {
      state = WeatherFailure(error: e.toString());
    }
  }
}

final weatherProvider = StateNotifierProvider<WeatherNotifier, WeatherState>(
  (ref) => WeatherNotifier(),
);
