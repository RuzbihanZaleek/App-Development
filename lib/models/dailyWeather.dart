import 'package:flutter/cupertino.dart';

class DailyWeather with ChangeNotifier {
  var dailyTemp;
  var condition;
  var date;
  var uvi;
  var humidity;
  var pressure;
  var windSpeed;
  var description;

  DailyWeather(
      {this.dailyTemp,
      this.condition,
      this.date,
      this.uvi,
      this.humidity,
      this.pressure,
      this.windSpeed,
      this.description});

  factory DailyWeather.fromJson(Map<String, dynamic> json) {
    return DailyWeather(uvi: json['daily'][0]['uvi']);
  }

  static DailyWeather fromDailyJson(dynamic json) {
    return DailyWeather(
        dailyTemp: json['temp']['day'],
        condition: json['weather'][0]['main'],
        date:
            DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000, isUtc: true),
        humidity: json['humidity'],
        pressure: json['pressure'],
        windSpeed: json['wind_speed'],
        uvi: json['uvi'],
        description: json['weather'][0]['description']);
  }
}
