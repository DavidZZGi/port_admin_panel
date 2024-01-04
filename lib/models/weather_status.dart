class WeatherStatus {
  String observationTime;
  int temperature;
  List<String> weatherIcons;
  List<String> weatherDescriptions;
  int windSpeed;
  int windDegree;
  String windDir;
  int pressure;
  int precip;
  int humidity;
  int uvIndex;
  bool isDay;

  WeatherStatus({
    required this.observationTime,
    required this.temperature,
    required this.weatherIcons,
    required this.weatherDescriptions,
    required this.windSpeed,
    required this.windDegree,
    required this.windDir,
    required this.pressure,
    required this.precip,
    required this.humidity,
    required this.uvIndex,
    required this.isDay,
  });

  factory WeatherStatus.fromJson(Map<String, dynamic> json) {
    return WeatherStatus(
      observationTime: json['current']['observation_time'],
      temperature: json['current']['temperature'],
      weatherIcons: List<String>.from(json['current']['weather_icons']),
      weatherDescriptions:
          List<String>.from(json['current']['weather_descriptions']),
      windSpeed: json['current']['wind_speed'],
      windDegree: json['current']['wind_degree'],
      windDir: json['current']['wind_dir'],
      pressure: json['current']['pressure'],
      precip: json['current']['precip'],
      humidity: json['current']['humidity'],
      uvIndex: json['current']['uv_index'],
      isDay: json['current']['is_day'] == 'yes' ? true : false,
    );
  }
}
