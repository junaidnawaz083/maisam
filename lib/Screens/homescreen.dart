import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisam/Controllers/record_controller.dart';
import 'package:maisam/Screens/add_new_record.dart';
import 'package:maisam/widgets/homescreenlisttile.dart';

class HomeScreen extends GetView<RecordController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => RecordController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Example'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: ListView(children: [
          Column(
            children: [
              SizedBox(
                height: Get.height * 0.06,
              ),
              Text(
                'Welcome to Studant Record',
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Obx(
                () => ListView.builder(
                  itemCount: controller.allRecord.length,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return HomeScreenListTile(model: controller.allRecord[i]);
                  },
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    AddNewRecord(),
                  );
                },
                child: Text('Add New Record'),
              )
            ],
          )
        ]),
      ),
    );
  }
}
