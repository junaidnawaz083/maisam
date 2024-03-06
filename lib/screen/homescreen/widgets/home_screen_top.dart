import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisam/controller/home_screen_controller.dart';

class HomeScreenTopWidget extends GetView<HomeScreenController> {
  const HomeScreenTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<HomeScreenController>();
    return Container(
      width: Get.width,
      height: Get.height * 0.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text(
              'Welcome to Flutter',
              style: TextStyle(fontSize: 18, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
