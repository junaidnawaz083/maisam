import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:maisam/models/weatherModel.dart';

class WeatherApi {
  Future<WeatherModel> getWeatherData(double lat, double lang) async {
    String url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lang&appid=0a3e7eef8adeeac0771a4f14b3df8b4e';
    var response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    return WeatherModel.fromJson(data);
  }
}
