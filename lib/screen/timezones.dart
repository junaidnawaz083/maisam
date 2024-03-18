import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:maisam/controller/timezone_controller.dart';
import 'package:maisam/screen/timezone_detail.dart';

class TimeZones extends GetView<TimeZonesController> {
  const TimeZones({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TimeZonesController());
    controller.getTimeZones();
    return LayoutBuilder(builder: (context, con) {
      return Scaffold(
        body: SizedBox(
          width: con.maxWidth,
          height: con.maxHeight,
          child: Obx(
            () => ListView.builder(
              itemCount: controller.timezoneList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(controller.timezoneList[index].toString()),
                  onTap: () async {
                    var model = await controller.getTimeZoneDetail(controller.timezoneList[index]);
                    Get.to(TimeZoneDetail(model: model));
                  },
                );
              },
            ),
          ),
        ),
      );
    });
  }
}
