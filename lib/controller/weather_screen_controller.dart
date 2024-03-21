import 'package:get/get.dart';
import 'package:maisam/controller/singolton/api_controller.dart';
import 'package:maisam/models/weatherModel.dart';

class WeatherScreenController extends GetxController {
  RxBool loading = true.obs;
  Rx<WeatherModel> weatherModel = Rx(WeatherModel());
  @override
  void onInit() async {
    super.onInit();
    getWeatherData();
  }

  getWeatherData() async{
weatherModel.value =
        await ApiController.instance.getWeatherData(28.650313, 70.661143);
    loading.value = false;
  }
}
