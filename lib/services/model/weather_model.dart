class WeatherModel {
  final String name;
  final String country;
  final String status;
  final double temp;
  String? icon;

  WeatherModel({
    required this.name,
    this.icon,
    required this.country,
    required this.status,
    required this.temp,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      name: json['location']['name'],
      temp: json['current']['temp_c'],
      country: json['location']['country'],
      status: json['current']['condition']['text'],
      icon: json['current']['condition']['icon'],
    );
  }
}
