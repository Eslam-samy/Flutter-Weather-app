import 'package:weather_app/home/data/model/values_data_model.dart';

class TimeDataDataModel {
  final String time;
  final ValuesDataModel values;

  TimeDataDataModel({
    required this.time,
    required this.values,
  });

  factory TimeDataDataModel.fromJson(Map<String, dynamic> json) {
    return TimeDataDataModel(
      time: json['time'] as String,
      values: ValuesDataModel.fromJson(json['values']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'time': time,
      'values': values.toJson(),
    };
  }
}
