import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisam/controller/home_screen_controller.dart';
import 'package:maisam/screen/getUserRecord/get_user_record.dart';
import 'package:maisam/screen/homescreen/widgets/home_screen_top.dart';

class MyWidget extends GetView<HomeScreenController> {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutetr Test'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: ListView(
          shrinkWrap: true,
          children: [
            HomeScreenTopWidget(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(GetUserRecord());
                },
                child: const Text('Add Record'),
              ),
            ),
            SizedBox(
              height: Get.height * 0.1,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 30,
              ),
              decoration: BoxDecoration(color: Colors.white10),
              child: Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.userList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        controller.userList[index].name!,
                      ),
                      subtitle: Text(
                        controller.userList[index].email!,
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
