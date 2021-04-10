import 'package:flutter/material.dart';
import 'package:flutter_weather/widgets/weatherDetail.dart';
import 'package:flutter_weather/widgets/weatherForGivenDate.dart';
import 'package:intl/intl.dart';

class WeatherScreen extends StatelessWidget {
  static const routeName = '/weatherScreen';
  final weatherData;
  final weather;

  const WeatherScreen({Key key, this.weatherData, this.weather})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            DateFormat.yMMMEd().format(this.weather.date),
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
            height: mediaQuery.size.height,
            width: mediaQuery.size.width,
            child: Column(
              children: [
                WeatherForDate(wData: weatherData),
                SizedBox(
                  height: 20,
                ),
                WeatherDetail(wData: weatherData),
              ],
            )),
      ),
    );
  }
}
