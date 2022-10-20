import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final String _baseUrl = 'http://api.weatherapi.com/v1';
  final String _apiKey = '198dece0fdcf4f4fb27111949221210';

  Future<WeatherModel?> getWeatherData({required String cityName}) async {
    WeatherModel? weather;
    try {
      http.Response response = await http.get(
        Uri.parse("$_baseUrl/forecast.json?key=$_apiKey&q=$cityName&days=3"),
      );

      Map<String, dynamic> data = jsonDecode(response.body);

      weather = WeatherModel.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
    }

    return weather;
  }
}
