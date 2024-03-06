import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisam/controller/home_screen_controller.dart';
import 'package:maisam/models/userModel.dart';

class GetUserRecord extends GetView<HomeScreenController> {
  const GetUserRecord({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeScreenController());
    TextEditingController txt_name = TextEditingController();
    TextEditingController txt_email = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add User  Data'),
          centerTitle: true,
        ),
        body: LayoutBuilder(builder: (context, con) {
          return Form(
            key: _formKey,
            child: SizedBox(
              width: con.maxWidth,
              height: con.maxHeight,
              child: Center(
                child: SizedBox(
                  width: con.maxWidth * 0.9,
                  height: con.maxHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Enter User name'),
                      SizedBox(
                        height: con.maxHeight * 0.01,
                      ),
                      TextFormField(
                        validator: (txt) {
                          if (txt != null && txt.isEmpty) {
                            return 'Name is Required';
                          }
                          return null;
                        },
                        controller: txt_name,
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 244, 231, 54)),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            label: Text('Name'),
                            hintText: 'Enter User Name',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12)),
                      ),
                      SizedBox(
                        height: con.maxHeight * 0.04,
                      ),
                      const Text('Enter User Email'),
                      SizedBox(
                        height: con.maxHeight * 0.01,
                      ),
                      TextFormField(
                        validator: (txt) {
                          if (txt != null && txt.isEmpty) {
                            return 'Email is Required';
                          }
                          return null;
                        },
                        controller: txt_email,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 244, 231, 54)),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          label: Text('Email Address'),
                          hintText: 'Enter User Email',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: con.maxHeight * 0.1,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              controller.userList.add(
                                UserModel(
                                    name: txt_name.text, email: txt_email.text),
                              );
                              Get.back();
                            }
                          },
                          child: const Text('Save Record'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
