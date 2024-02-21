import 'package:weather_app/core/utils/date_time_converter.dart';
import 'package:weather_app/home/domain/model/get_weather_domain_model.dart';
import 'package:weather_app/home/domain/model/time_data_domain_model.dart';
import 'package:weather_app/home/presentation/model/current_forecase_ui_model.dart';
import 'package:weather_app/home/presentation/model/forecast_ui_model.dart';
import 'package:weather_app/home/presentation/model/home_ui_model.dart';

extension GetWeatherUiModelMapper on GetWeatherDomainModel {
  HomeUiModel toUiModel() {
    return HomeUiModel(
      current: CurrentForecastUiModel(
          address: "",
          avgtemp: timeLines.daily[0].values.temperatureAvg.toString(),
          hTemp: timeLines.daily[0].values.temperatureMax.toString(),
          lTemp: timeLines.daily[0].values.temperatureApparentMin.toString(),
          type: timeLines.daily[0].values.weatherCodeMax
              .mapToWeatherDescription(),
          iconSrc: timeLines.daily[0].values.weatherCodeMax.mapToWeatherIcon()),
      hourlyForecast: timeLines.hourly
          .where((hourlyData) =>
              DateTime.parse(hourlyData.time).day == DateTime.now().day)
          .map((e) => e.toUiModel())
          .toList(),
      weeklyForecast: timeLines.daily.map((e) => e.toUiModel()).toList(),
    );
  }
}

extension GetHourlyWeatherUiModelMapper on TimeDataDomainModel {
  ForeCastUiModel toUiModel() {
    return ForeCastUiModel(
        time: convertToCustomFormat(time),
        type: values.weatherCode.mapToWeatherDescription(),
        avgTemp: values.temperatureAvg != null
            ? values.temperatureAvg.toString()
            : values.temperature.toString().toString(),
        iconSrc: values.weatherCode.mapToWeatherIcon());
  }
}

extension WeatherCodeMapping on int? {
  String mapToWeatherDescription() {
    // Your weather code mapping
    Map<String, String> weatherCodeMapping = {
      "0": "Unknown",
      "1000": "Clear, Sunny",
      "1100": "Mostly Clear",
      "1101": "Partly Cloudy",
      "1102": "Mostly Cloudy",
      "1001": "Cloudy",
      "2000": "Fog",
      "2100": "Light Fog",
      "4000": "Drizzle",
      "4001": "Rain",
      "4200": "Light Rain",
      "4201": "Heavy Rain",
      "5000": "Snow",
      "5001": "Flurries",
      "5100": "Light Snow",
      "5101": "Heavy Snow",
      "6000": "Freezing Drizzle",
      "6001": "Freezing Rain",
      "6200": "Light Freezing Rain",
      "6201": "Heavy Freezing Rain",
      "7000": "Ice Pellets",
      "7101": "Heavy Ice Pellets",
      "7102": "Light Ice Pellets",
      "8000": "Thunderstorm",
    };

    // Convert the code to a string
    String? codeString = this?.toString();

    // Perform the mapping
    return weatherCodeMapping[codeString ?? ""] ?? "Unknown Weather Code";
  }
}

extension WeatherIconMapping on int? {
  String mapToWeatherIcon() {
    // Your weather code mapping
    Map<String, String> weatherCodeMapping = {
      "0": "assets/images/sunny_icon.png",
      "1000": "assets/images/sunny_icon.png",
      "1100": "assets/images/mostly_clear_icon.png",
      "1101": "assets/images/cloudy_icon.png",
      "1102": "assets/images/cloudy_icon.png",
      "1001": "assets/images/cloudy_icon.png",
      "2000": "assets/images/fog_icon.png",
      "2100": "assets/images/fog_icon.png",
      "4000": "assets/images/cloudy_icon.png",
      "4001": "assets/images/rain_icon.png",
      "4200": "assets/images/rain_icon.png",
      "4201": "assets/images/heavy_rain_icon.png",
      "5000": "assets/images/snow_icon.png",
      "5001": "assets/images/flurries_icon.png",
      "5100": "assets/images/snow_icon.png",
      "5101": "assets/images/snow_icon.png",
      "6000": "assets/images/heavy_rain_icon.png",
      "6001": "assets/images/heavy_rain_icon.png",
      "6200": "assets/images/snow_icon.png",
      "6201": "assets/images/snow_icon.png",
      "7000": "assets/images/snow_icon.png",
      "7101": "assets/images/snow_icon.png",
      "7102": "assets/images/snow_icon.png",
      "8000": "assets/images/storm_icon.png",
    };

    // Convert the code to a string
    String? codeString = this?.toString();

    // Perform the mapping
    return weatherCodeMapping[codeString ?? ""] ??
        "assets/images/sunny_icon.png";
  }
}
