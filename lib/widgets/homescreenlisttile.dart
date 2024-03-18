import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisam/models/user_model.dart';

class HomeScreenListTile extends StatelessWidget {
  final UserModel model;
  const HomeScreenListTile({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Get.height * 0.01),
      child: Center(
        child: Container(
          width: Get.width * 0.9,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(
                children: [
                  const Text('name :  '),
                  Text(model.name),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text('email :  '),
                  Text(model.email),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              if (model.phone != null && model.phone != '') ...[
                Row(
                  children: [
                    const Text('phone :  '),
                    Text(model.phone!),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
