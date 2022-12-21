import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/api/weather_api.dart';
import 'package:flutter_application_1/models/weather_forecast_daily.dart';

class HomePage extends StatefulWidget {
  final WeatherForecast? locationWeather;
  const HomePage({super.key, required this.locationWeather});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<WeatherForecast> weatherObj;
  late String _cityName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.locationWeather != null) {
      weatherObj = Future.value(widget.locationWeather);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030317),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff00A1FF),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: const Icon(
                CupertinoIcons.location_circle,
                color: Colors.white,
                size: 30,
              ),
            ),
            Row(
              children: const [
                Icon(
                  CupertinoIcons.map_fill,
                  color: Colors.white,
                ),
                Text(
                  'openweathermap.org',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                )
              ],
            ),
            GestureDetector(
              child: const Icon(
                Icons.search_outlined,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {},
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          //Future data.
          FutureBuilder<WeatherForecast>(
            future: weatherObj,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    //view
                    //view
                  ],
                );
              } else {
                return const Center(
                  child: Text(
                    'City not found\n Please enter correct city',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
