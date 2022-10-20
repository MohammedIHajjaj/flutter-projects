import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  String cityName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search a City"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            onChanged: (value) => cityName = value,
            onSubmitted: (cityName) async {
              WeatherService service = WeatherService();

              WeatherModel? weather =
                  await service.getWeatherData(cityName: cityName);

              debugPrint(weather.toString());
              Provider.of<WeatherProvider>(context, listen: false).weatherData =
                  weather;

              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 24,
                horizontal: 16,
              ),
              hintText: "Enter City Name",
              border: const OutlineInputBorder(),
              suffixIcon: GestureDetector(
                child: const Icon(Icons.search),
                onTap: () async {
                  WeatherService service = WeatherService();

                  WeatherModel? weather =
                      await service.getWeatherData(cityName: cityName);

                  debugPrint(weather.toString());
                  Provider.of<WeatherProvider>(context, listen: false)
                      .weatherData = weather;

                  Navigator.pop(context);
                },
              ),
              label: const Text("Search"),
            ),
          ),
        ),
      ),
    );
  }
}
