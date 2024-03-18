import 'package:get/state_manager.dart';
import 'package:maisam/world_time_model.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class TimeZonesController extends GetxController {
  RxList<String> timezoneList = RxList([]);

  Future<void> getTimeZones() async {
    String url = 'http://worldtimeapi.org/api/timezone/';
    var responce = await http.get(Uri.parse(url));

    var data = jsonDecode(responce.body);
    // for (int i = 0; i < data.length; i++) {
    //   timezoneList.add(data[i]);
    // }
    data.forEach((val){
      timezoneList.add(val);
    });
  }

  Future<WorldTimeApiModel> getTimeZoneDetail(String timezone) async {
    String url = 'http://worldtimeapi.org/api/timezone/$timezone';
    var responce = await http.get(Uri.parse(url));
    var data = jsonDecode(responce.body);
    return WorldTimeApiModel.fromJson(data);
  }
}
