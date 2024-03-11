import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisam/models/user_model.dart';

import '../Controllers/record_controller.dart';

class AddNewRecord extends GetView<RecordController> {
  const AddNewRecord({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name_txt = TextEditingController();
    TextEditingController email_txt = TextEditingController();
    TextEditingController phone_txt = TextEditingController();
    Get.lazyPut(() => RecordController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Add new Record'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Enter Name'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: name_txt,
                    validator: (txt) {
                      if (txt != null || txt != '') {
                        return 'Name is Empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Enter Email'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: email_txt,
                    validator: (txt) {
                      if (txt != null || txt != '') {
                        return 'Email is Empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Enter Phone Number'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: phone_txt,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      UserModel model = UserModel(
                        name: name_txt.text,
                        email: email_txt.text,
                        phone: phone_txt.text.isEmpty ? '' : phone_txt.text,
                      );
                      controller.allRecord.add(model);
                      Get.back();
                    },
                    child: Text('Add Record'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
