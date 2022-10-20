import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/providers/weather_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    weatherData = Provider.of<WeatherProvider>(context).weatherData;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () => Navigator.pushNamed(context, '/search'),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.,
      appBar: AppBar(
        title: const Text("Weather App"),
      ),
      body: weatherData == null
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "no weather data available now",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "search now 🔍",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  )
                ],
              ),
            )
          : Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  weatherData!.getThemeColor(),
                  weatherData!.getThemeColor()[300]!,
                  weatherData!.getThemeColor()[100]!,
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 3,
                  ),
                  Text(
                    weatherData!.name,
                    style: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Last Update: ${weatherData!.date.hour}:${weatherData!.date.minute} ",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network("http:${weatherData!.weatherImg}"),
                      Text(weatherData!.temp.toString(),
                          style: const TextStyle(
                            fontSize: 30,
                          )),
                      Column(
                        children: [
                          Text("maxTemp: ${weatherData!.maxTemp}"),
                          Text("minTemp: ${weatherData!.minTem}"),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    // to let the app take action if there is null
                    weatherData?.weatherState ?? "we can't get status",
                    style: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(
                    flex: 5,
                  ),
                ],
              ),
            ),
    );
  }
}
