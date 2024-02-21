import 'package:weather_app/home/domain/model/values_domain_model.dart';

class TimeDataDomainModel {
  final String time;
  final ValuesDomainModel values;

  TimeDataDomainModel({
    required this.time,
    required this.values,
  });
}
