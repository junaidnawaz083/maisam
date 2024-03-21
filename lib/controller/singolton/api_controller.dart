import 'package:maisam/api/weather_api.dart';
import 'package:maisam/models/weatherModel.dart';

class ApiController {
  ApiController._privateConstructor();

  static final ApiController instance = ApiController._privateConstructor();

  factory ApiController() {
    return instance;
  }
//28.650313, 70.661143
  final WeatherApi _weatherApi = WeatherApi();

  Future<WeatherModel> getWeatherData(double lat, double lang) async {
    return await _weatherApi.getWeatherData(lat, lang);
  }
}
