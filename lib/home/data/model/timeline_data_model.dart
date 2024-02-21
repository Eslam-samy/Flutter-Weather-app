import 'package:weather_app/home/data/model/time_data_data_model.dart';

class TimelinesDataModel {
  final List<TimeDataDataModel>? hourly;
  final List<TimeDataDataModel>? daily;

  TimelinesDataModel({
    this.hourly,
    this.daily,
  });

  factory TimelinesDataModel.fromJson(Map<String, dynamic> json) {
    return TimelinesDataModel(
      hourly: (json['hourly'] as List<dynamic>)
          .map((item) => TimeDataDataModel.fromJson(item))
          .toList(),
      daily: (json['daily'] as List<dynamic>)
          .map((item) => TimeDataDataModel.fromJson(item))
          .toList(),
    );
  }

    factory TimelinesDataModel.fromJsonLocal(Map<String, dynamic> json) {
    return TimelinesDataModel(
      hourly: (json['hourly'] as List<dynamic>)
          .map((item) => TimeDataDataModel.fromJson(item))
          .toList(),
      daily: (json['daily'] as List<dynamic>)
          .map((item) => TimeDataDataModel.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'hourly': hourly?.map((e) => e.toJson()).toList(),
      'daily': daily?.map((e) => e.toJson()).toList(),
    };
  }
}
