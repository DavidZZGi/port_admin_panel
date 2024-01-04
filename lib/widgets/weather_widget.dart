import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:port_admin_panel/models/weather_status.dart';
import 'package:port_admin_panel/widgets/waether_display_widget.dart';

class WeatherChart extends StatefulWidget {
  const WeatherChart({super.key});

  @override
  WeatherChartState createState() => WeatherChartState();
}

class WeatherChartState extends State<WeatherChart> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WeatherStatus>(
      future: fetchWeatherData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text("Error: ${snapshot.error}");
        } else {
          final weather = snapshot.data!;

          return WeatherDisplayWidget(
            weather: weather,
          );
        }
      },
    );
  }

  Future<WeatherStatus> fetchWeatherData() async {
    var apiKey = 'b8883e836d5608840f1c69b9a5db4be0';
    final response = await http.get(
      Uri.parse(
        'http://api.weatherstack.com/current?access_key=$apiKey&query=New%20Orleans',
      ),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return WeatherStatus.fromJson(data);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
