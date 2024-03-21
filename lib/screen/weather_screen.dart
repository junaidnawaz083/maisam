import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisam/controller/weather_screen_controller.dart';

class WeatherScreen extends GetView<WeatherScreenController> {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => WeatherScreenController());
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, con) {
            return SizedBox(
              width: con.maxWidth,
              height: con.maxHeight,
              child: Obx(() => controller.loading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          controller.weatherModel.value.main!.temp.toString(),
                        ),
                      ],
                    )),
            );
          },
        ),
      ),
    );
  }
}
