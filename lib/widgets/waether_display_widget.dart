import 'package:flutter/material.dart';
import 'package:port_admin_panel/models/weather_status.dart';

class WeatherDisplayWidget extends StatelessWidget {
  final WeatherStatus weather;

  const WeatherDisplayWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white, // Adjust the color to match your design
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.network(weather.weatherIcons.first,
              width: 40), // Assuming there is at least one icon URL
          const SizedBox(width: 8),
          Text(
            '${weather.temperature * 9 ~/ 5 + 32}°F', // Add 'F' or 'C' depending on your preference
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Precipitation: ${weather.precip}%',
                  style: const TextStyle(fontSize: 12)),
              Text('Humidity: ${weather.humidity}%',
                  style: const TextStyle(fontSize: 12)),
              Text('Wind: ${weather.windSpeed} mph ${weather.windDir}',
                  style: const TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
