import 'package:weather_app/home/data/model/get_weather_data_model.dart';
import 'package:weather_app/home/data/model/time_data_data_model.dart';
import 'package:weather_app/home/data/model/timeline_data_model.dart';
import 'package:weather_app/home/data/model/values_data_model.dart';
import 'package:weather_app/home/domain/model/get_weather_domain_model.dart';
import 'package:weather_app/home/domain/model/time_data_domain_model.dart';
import 'package:weather_app/home/domain/model/time_lines_domain_model.dart';
import 'package:weather_app/home/domain/model/values_domain_model.dart';

extension GetWeatherDataModelMapper on GetWeatherDataModel {
  GetWeatherDomainModel toDomainModel() {
    return GetWeatherDomainModel(
      timeLines: timeLines.toDomainModel(),
    );
  }
}

extension TimelinesDataModelMapper on TimelinesDataModel {
  TimelinesDomainModel toDomainModel() {
    return TimelinesDomainModel(
      hourly: (hourly ?? []).map((item) => item.toDomainModel()).toList(),
      daily: (daily ?? []).map((item) => item.toDomainModel()).toList(),
    );
  }
}

extension TimeDataDataModelMapper on TimeDataDataModel {
  TimeDataDomainModel toDomainModel() {
    return TimeDataDomainModel(
      time: time,
      values: values.toDomainModel(),
    );
  }
}

extension ValuesDataModelMapper on ValuesDataModel {
  ValuesDomainModel toDomainModel() {
    return ValuesDomainModel(
      cloudBase: cloudBase,
      cloudCeiling: cloudCeiling,
      cloudCover: cloudCover,
      dewPoint: dewPoint,
      freezingRainIntensity: freezingRainIntensity,
      humidity: humidity,
      precipitationProbability: precipitationProbability,
      pressureSurfaceLevel: pressureSurfaceLevel,
      rainIntensity: rainIntensity,
      sleetIntensity: sleetIntensity,
      snowIntensity: snowIntensity,
      temperature: temperature,
      temperatureApparent: temperatureApparent,
      uvHealthConcern: uvHealthConcern,
      uvIndex: uvIndex,
      visibility: visibility,
      weatherCode: weatherCode,
      windDirection: windDirection,
      windGust: windGust,
      windSpeed: windSpeed,
      evapotranspiration: evapotranspiration,
      iceAccumulation: iceAccumulation,
      iceAccumulationLweAvg: iceAccumulationLweAvg,
      iceAccumulationLweMax: iceAccumulationLweMax,
      iceAccumulationLweMin: iceAccumulationLweMin,
      iceAccumulationLweSum: iceAccumulationLweSum,
      moonriseTime: moonriseTime,
      moonsetTime: moonsetTime,
      iceAccumulationAvg: iceAccumulationAvg,
      iceAccumulationMax: iceAccumulationMax,
      iceAccumulationMin: iceAccumulationMin,
      iceAccumulationSum: iceAccumulationSum,
      rainAccumulation: rainAccumulation,
      rainAccumulationLweAvg: rainAccumulationLweAvg,
      rainAccumulationLweMax: rainAccumulationLweMax,
      rainAccumulationLweMin: rainAccumulationLweMin,
      rainAccumulationSum: rainAccumulationSum,
      rainIntensityAvg: rainIntensityAvg,
      rainIntensityMax: rainIntensityMax,
      rainIntensityMin: rainIntensityMin,
      sleetAccumulation: sleetAccumulation,
      sleetAccumulationLweAvg: sleetAccumulationLweAvg,
      sleetAccumulationLweMax: sleetAccumulationLweMax,
      sleetAccumulationLweMin: sleetAccumulationLweMin,
      sleetAccumulationLweSum: sleetAccumulationLweSum,
      sleetAccumulationMax: sleetAccumulationMax,
      sleetAccumulationMin: sleetAccumulationMin,
      sleetIntensityAvg: sleetIntensityAvg,
      sleetIntensityMax: sleetIntensityMax,
      sleetIntensityMin: sleetIntensityMin,
      snowAccumulation: snowAccumulation,
      snowAccumulationLweAvg: snowAccumulationLweAvg,
      snowAccumulationLweMax: snowAccumulationLweMax,
      snowAccumulationLweMin: snowAccumulationLweMin,
      snowAccumulationLweSum: snowAccumulationLweSum,
      snowAccumulationMax: snowAccumulationMax,
      snowAccumulationMin: snowAccumulationMin,
      snowAccumulationSum: snowAccumulationSum,
      sunriseTime: sunriseTime,
      sunsetTime: sunsetTime,
      temperatureApparentAvg: temperatureApparentAvg,
      temperatureApparentMax: temperatureApparentMax,
      temperatureApparentMin: temperatureApparentMin,
      temperatureAvg: temperatureAvg,
      temperatureMax: temperatureMax,
      temperatureMin: temperatureMin,
      uvHealthConcernAvg: uvHealthConcernAvg,
      uvHealthConcernMax: uvHealthConcernMax,
      uvHealthConcernMin: uvHealthConcernMin,
      uvIndexAvg: uvIndexAvg,
      uvIndexMax: uvIndexMax,
      uvIndexMin: uvIndexMin,
      visibilityAvg: visibilityAvg,
      visibilityMax: visibilityMax,
      visibilityMin: visibilityMin,
      weatherCodeMax: weatherCodeMax,
      weatherCodeMin: weatherCodeMin,
      windDirectionAvg: windDirectionAvg,
      windGustAvg: windGustAvg,
      windGustMax: windGustMax,
      windGustMin: windGustMin,
      windSpeedAvg: windSpeedAvg,
      windSpeedMax: windSpeedMax,
      windSpeedMin: windSpeedMin,
    );
  }
}
