import 'package:flutter/material.dart';

class WeatherModel {
  String name;
  DateTime date;
  double temp;
  double maxTemp;
  double minTem;
  String weatherState;
  String weatherImg;

  WeatherModel(
      {required this.name,
      required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTem,
      required this.weatherState,
      required this.weatherImg});

  // Named Constructor
  // WeatherModel.fromJson(data) {
  //   name = data["location"]["name"];
  //   date = data["current"]["last_updated"];
  //   temp = data["forecast"]["forecastday"][0]["day"]["avgtemp_c"];
  //   maxTemp = data["forecast"]["forecastday"][0]["day"]["maxtemp_c"];
  //   minTem = data["forecast"]["forecastday"][0]["day"]["mintemp_c"];
  //   weatherState =
  //       data["forecast"]["forecastday"][0]["day"]["condition"]["text"];
  //   weatherImg = data["forecast"]["forecastday"][0]["day"]["condition"]["icon"];
  // }

  // factory named constructor

  factory WeatherModel.fromJson(data) {
    return WeatherModel(
        name: data["location"]["name"],
        date: DateTime.parse(data["current"]["last_updated"]),
        temp: data["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
        maxTemp: data["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
        minTem: data["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        weatherState: data["forecast"]["forecastday"][0]["day"]["condition"]
            ["text"],
        weatherImg: data["forecast"]["forecastday"][0]["day"]["condition"]
            ["icon"]);
  }

  @override
  String toString() {
    return "temp = $weatherImg";
  }

  MaterialColor getThemeColor() {
    if (weatherState == 'Clear' ||
        weatherState == 'Light Cloud' ||
        weatherState == 'Sunny') {
      return Colors.orange;
    } else if (weatherState == 'Sleet' ||
        weatherState == 'Snow' ||
        weatherState == 'Hail') {
      return Colors.blue;
    } else if (weatherState == 'Light Rain' ||
        weatherState == 'Heavy Rain' ||
        weatherState == 'Showers') {
      return Colors.blue;
    } else if (weatherState == 'Heavy Cloud') {
      return Colors.blueGrey;
    } else if (weatherState == 'Thunderstorm' || weatherState == '') {
      return Colors.orange;
    } else {
      return Colors.blue;
    }
  }
}
