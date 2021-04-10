import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './provider/weatherProvider.dart';
import './Screens/homeScreen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        title: 'Flutter Weather',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            elevation: 0,
          ),
          scaffoldBackgroundColor: Colors.grey.shade200,
          primaryColor: Colors.blue,
          accentColor: Colors.white
        ),
        home: HomeScreen(),
      ),
    );
  }
}
