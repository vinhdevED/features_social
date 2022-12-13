import '../utilities/constants.dart';
import 'status.dart';
import 'temp.dart';
import 'weather.dart';

class WeatherList {
  int? dt;
  int? sunrise;
  int? sunset;
  Temp? temp;
  Status? status;
  int? pressure;
  int? humidity;
  List<Weather>? weather;
  double? speed;
  int? deg;
  num? gust;
  int? clouds;
  double? pop;
  num? rain;
  WeatherList(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.temp,
      this.status,
      this.pressure,
      this.humidity,
      this.weather,
      this.speed,
      this.deg,
      this.gust,
      this.clouds,
      this.pop,
      this.rain});

  WeatherList.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    temp = json['temp'] != null ? Temp.fromJson(json['temp']) : null;
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
    pressure = json['pressure'];
    humidity = json['humidity'];
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(Weather.fromJson(v));
      });
    }
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
    clouds = json['clouds'];
    pop = json['pop'].toDouble();
    rain = json['rain'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dt'] = dt;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    if (temp != null) {
      data['temp'] = temp!.toJson();
    }
    if (status != null) {
      data['feels_like'] = status!.toJson();
    }
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    if (weather != null) {
      data['weather'] = weather!.map((v) => v.toJson()).toList();
    }
    data['speed'] = speed;
    data['deg'] = deg;
    data['gust'] = gust;
    data['clouds'] = clouds;
    data['pop'] = pop;
    data['rain'] = rain;
    return data;
  }

  String getIconUrl() {
    return '${Constants.WEATHER_IMAGES_URL}${weather![0].icon!}.png';
  }
}
