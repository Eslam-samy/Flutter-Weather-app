import 'dart:convert';

import 'package:weather_app/home/data/model/timeline_data_model.dart';

class GetWeatherDataModel {
  final TimelinesDataModel timeLines;

  GetWeatherDataModel({
    required this.timeLines,
  });

  factory GetWeatherDataModel.fromJson(Map<String, dynamic> json) {
    return GetWeatherDataModel(
      timeLines: TimelinesDataModel.fromJson(json['timelines']),
    );
  }

  factory GetWeatherDataModel.fromJsonLocal(Map<String, dynamic> json) {
    return GetWeatherDataModel(
        timeLines: TimelinesDataModel.fromJsonLocal(
      jsonDecode(json['timelines'] as String) as Map<String, dynamic>,
    ));
  }

  Map<String, dynamic> toJson() {
    return {
      'timelines': jsonEncode(timeLines.toJson()),
    };
  }
}
