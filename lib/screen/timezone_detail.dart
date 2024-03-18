import 'package:flutter/material.dart';
import 'package:maisam/world_time_model.dart';

class TimeZoneDetail extends StatelessWidget {
  final WorldTimeApiModel model;
  const TimeZoneDetail({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, con) {
      return Scaffold(
        body: Center(
          child: SizedBox(
            width: con.maxWidth * 0.9,
            height: con.maxHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(model.datetime.toString()),
                Text(model.dayOfYear.toString()),
                Text(model.dayOfWeek.toString()),
                Text(model.timezone.toString()),
              ],
            ),
          ),
        ),
      );
    });
  }
}
