import 'package:weather_app/services/model/weather_model.dart';

abstract class WeatherState {}

class InitialState extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {
  final WeatherModel weather;
  WeatherSuccess(this.weather);
}

class WeatherFailure extends WeatherState {
  final String error;
  WeatherFailure({required this.error});
}
