import 'package:flutter/material.dart';
import 'package:weather_app/presentation/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App with Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WeatherHome(),
    );
  }
}


