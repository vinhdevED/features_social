import 'package:flutter_application_1/models/city.dart';
import 'package:flutter_application_1/models/weather_list.dart';

class WeatherForecast {
  City? city;
  String? cod;
  double? message;
  int? cnt;
  List<WeatherList>? list;
  WeatherForecast({this.city, this.cod, this.message, this.cnt, this.list});

  //Take JSON -> model
  WeatherForecast.fromJson(Map<String, dynamic> json) {
    city = json['city'] != null ? City.fromJson(json['city']) : null;
    cod = json['cod'];
    message = json['message'];
    cnt = json['cnt'];
    if (json['list'] != null) {
      list = <WeatherList>[];
      json['list'].forEach((v) {
        list!.add(WeatherList.fromJson(json));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (city != null) {
      data['city'] = city!.toJson();
    }
    data['cod'] = cod;
    data['message'] = message;
    data['cnt'] = cnt;
    if (list != null) {
      data['list'] = list!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
