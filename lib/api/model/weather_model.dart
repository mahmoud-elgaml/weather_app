// ignore_for_file: public_member_api_docs, sort_constructors_first
class WeatherModel {
  String? name;
  String? icon;
  String? country;
  String? text;
  double? temp;
  WeatherModel({
    required this.name,
    required this.icon,
    required this.country,
    required this.text,
    required this.temp,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      name: json['location']['name'],
      temp: json['current']['temp_c'],
      country: json['location']['country'],
      text: json['current']['condition']['text'],
      icon: json['current']['condition']['icon'],
    );
  }
}
