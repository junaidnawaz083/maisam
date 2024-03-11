import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisam/models/user_model.dart';

class HomeScreenListTile extends StatelessWidget {
  UserModel model;
  HomeScreenListTile({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Get.height * 0.01),
      child: Center(
        child: Container(
          width: Get.width * 0.9,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(
                children: [
                  Text('name :  '),
                  Text(model.name),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('email :  '),
                  Text(model.email),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              if (model.phone != null && model.phone != '') ...[
                Row(
                  children: [
                    Text('phone :  '),
                    Text(model.phone!),
                  ],
                ),
                SizedBox(
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
