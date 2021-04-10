import 'package:flutter/material.dart';
import 'package:flutter_weather/provider/weatherProvider.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../helper/utils.dart';

class MainWeather extends StatelessWidget {
  final wData;

  MainWeather({this.wData});

  final TextStyle _style1 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );
  final TextStyle _style2 = TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.grey[700],
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    final weatherData = Provider.of<WeatherProvider>(context);

    return Container(
      padding: EdgeInsets.fromLTRB(25, 15, 25, 5),
      height: MediaQuery.of(context).size.height / 3.4,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on_outlined),
              Text('${wData.weather.cityName}', style: _style1),
            ],
          ),
          SizedBox(height: 5),
          Text(
            DateFormat.yMMMEd().add_jm().format(DateTime.now()),
            style: _style2,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 25, right: 25),
                child: MapString.mapStringToIcon(
                    '${wData.weather.currently}', context, 55),
              ),
              Text(
                weatherData.getTemp(wData.weather.temp),
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            toBeginningOfSentenceCase('${wData.weather.description}'),
            style: _style1.copyWith(fontSize: 19),
          ),
        ],
      ),
    );
  }
}
