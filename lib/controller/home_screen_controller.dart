import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisam/models/userModel.dart';

class HomeScreenController extends GetxController {
  RxString val1 = RxString('');
  RxList<UserModel> userList = RxList([]);
}
