class WeatherModel {
  final Location location;
  final CurrentWeather current;
  final ForecastData forecast;

  WeatherModel({required this.location, required this.current, required this.forecast});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      location: Location.fromJson(json['location']),
      current: CurrentWeather.fromJson(json['current']),
      forecast: ForecastData.fromJson(json['forecast']),
    );
  }
}

class Location {
  final String name;
  final String country;

  Location({required this.name, required this.country});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(name: json['name'], country: json['country']);
  }
}

class CurrentWeather {
  final double tempC;
  final String status;
  final String iconUrl;

  CurrentWeather({required this.tempC, required this.status, required this.iconUrl});

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      tempC: json['temp_c'].toDouble(),
      status: json['condition']['text'],
      iconUrl: 'https:${json['condition']['icon']}',
    );
  }
}

class ForecastData {
  final List<ForecastDay> days;

  ForecastData({required this.days});

  factory ForecastData.fromJson(Map<String, dynamic> json) {
    var list = json['forecastday'] as List;
    return ForecastData(days: list.map((dayJson) => ForecastDay.fromJson(dayJson)).toList());
  }
}

class ForecastDay {
  final String date;
  final double avgTemp;
  final String condition;
  final String icon;

  ForecastDay({
    required this.date,
    required this.avgTemp,
    required this.condition,
    required this.icon,
  });

  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    return ForecastDay(
      date: json['date'],
      avgTemp: json['day']['avgtemp_c'].toDouble(),
      condition: json['day']['condition']['text'],
      icon: 'https:${json['day']['condition']['icon']}',
    );
  }
}
