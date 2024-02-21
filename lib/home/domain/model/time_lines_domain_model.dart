import 'package:weather_app/home/domain/model/time_data_domain_model.dart';

class TimelinesDomainModel {
  final List<TimeDataDomainModel> hourly;
  final List<TimeDataDomainModel> daily;

  TimelinesDomainModel({
    required this.hourly,
    required this.daily,
  });
}
