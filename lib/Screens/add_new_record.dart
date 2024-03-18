import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisam/models/user_model.dart';

import '../Controllers/record_controller.dart';

class AddNewRecord extends GetView<RecordController> {
  const AddNewRecord({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameTxt = TextEditingController();
    TextEditingController emailTxt = TextEditingController();
    TextEditingController phoneTxt = TextEditingController();
    Get.lazyPut(() => RecordController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new Record'),
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
                  const Text('Enter Name'),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: nameTxt,
                    validator: (txt) {
                      if (txt != null || txt != '') {
                        return 'Name is Empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Enter Email'),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: emailTxt,
                    validator: (txt) {
                      if (txt != null || txt != '') {
                        return 'Email is Empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Enter Phone Number'),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: phoneTxt,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      UserModel model = UserModel(
                        name: nameTxt.text,
                        email: emailTxt.text,
                        phone: phoneTxt.text.isEmpty ? '' : phoneTxt.text,
                      );
                      controller.allRecord.add(model);
                      Get.back();
                    },
                    child: const Text('Add Record'),
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
