import 'package:flutter/cupertino.dart';

class Weather with ChangeNotifier {
  var temp;
  var lat;
  var long;
  var pressure;
  var description;
  var currently;
  var humidity;
  var windSpeed;
  var cityName;

  Weather({
    this.temp,
    this.lat,
    this.long,
    this.pressure,
    this.description,
    this.currently,
    this.humidity,
    this.windSpeed,
    this.cityName,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temp: json['main']['temp'],
      lat: json['coord']['lat'],
      long: json['coord']['lon'],
      pressure: json['main']['pressure'],
      description: json['weather'][0]['description'],
      currently: json['weather'][0]['main'],
      humidity: json['main']['humidity'],
      windSpeed: json['wind']['speed'],
      cityName: json['name'],
    );
  }
}
