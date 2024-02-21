import 'package:equatable/equatable.dart';
import 'package:weather_app/home/presentation/model/current_forecase_ui_model.dart';
import 'package:weather_app/home/presentation/model/forecast_ui_model.dart';

class HomeUiModel extends Equatable {
  final CurrentForecastUiModel? current;
  final List<ForeCastUiModel>? hourlyForecast;
  final List<ForeCastUiModel>? weeklyForecast;

  const HomeUiModel({
    this.current,
    this.hourlyForecast,
    this.weeklyForecast,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        current,
        hourlyForecast,
        weeklyForecast,
      ];
}
