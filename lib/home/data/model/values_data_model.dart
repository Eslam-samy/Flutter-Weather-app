class ValuesDataModel {
  final double? cloudBase;
  final double? cloudCeiling;
  final double? cloudCover;
  final double? dewPoint;
  final double? freezingRainIntensity;
  final double? humidity;
  final double? precipitationProbability;
  final double? pressureSurfaceLevel;
  final double? rainIntensity;
  final double? sleetIntensity;
  final double? snowIntensity;
  final double? temperature;
  final double? temperatureApparent;
  final double? uvHealthConcern;
  final double? uvIndex;
  final double? visibility;
  final int? weatherCode;
  final double? windDirection;
  final double? windGust;
  final double? windSpeed;

  // Additional fields for minutely, hourly, and daily data
  final double? evapotranspiration;
  final double? iceAccumulation;
  final double? iceAccumulationLweAvg;
  final double? iceAccumulationLweMax;
  final double? iceAccumulationLweMin;
  final double? iceAccumulationLweSum;
  final String? moonriseTime;
  final String? moonsetTime;
  final double? iceAccumulationAvg;
  final double? iceAccumulationMax;
  final double? iceAccumulationMin;
  final double? iceAccumulationSum;
  final double? rainAccumulation;
  final double? rainAccumulationLweAvg;
  final double? rainAccumulationLweMax;
  final double? rainAccumulationLweMin;
  final double? rainAccumulationSum;
  final double? rainIntensityAvg;
  final double? rainIntensityMax;
  final double? rainIntensityMin;
  final double? sleetAccumulation;
  final double? sleetAccumulationLweAvg;
  final double? sleetAccumulationLweMax;
  final double? sleetAccumulationLweMin;
  final double? sleetAccumulationLweSum;
  final double? sleetAccumulationMax;
  final double? sleetAccumulationMin;
  final double? sleetIntensityAvg;
  final double? sleetIntensityMax;
  final double? sleetIntensityMin;
  final double? snowAccumulation;
  final double? snowAccumulationLweAvg;
  final double? snowAccumulationLweMax;
  final double? snowAccumulationLweMin;
  final double? snowAccumulationLweSum;
  final double? snowAccumulationMax;
  final double? snowAccumulationMin;
  final double? snowAccumulationSum;
  final String? sunriseTime;
  final String? sunsetTime;
  final double? temperatureApparentAvg;
  final double? temperatureApparentMax;
  final double? temperatureApparentMin;
  final double? temperatureAvg;
  final double? temperatureMax;
  final double? temperatureMin;
  final double? uvHealthConcernAvg;
  final double? uvHealthConcernMax;
  final double? uvHealthConcernMin;
  final double? uvIndexAvg;
  final double? uvIndexMax;
  final double? uvIndexMin;
  final double? visibilityAvg;
  final double? visibilityMax;
  final double? visibilityMin;
  final int? weatherCodeMax;
  final int? weatherCodeMin;
  final double? windDirectionAvg;
  final double? windGustAvg;
  final double? windGustMax;
  final double? windGustMin;
  final double? windSpeedAvg;
  final double? windSpeedMax;
  final double? windSpeedMin;

  ValuesDataModel({
    required this.cloudBase,
    required this.cloudCeiling,
    required this.cloudCover,
    required this.dewPoint,
    required this.freezingRainIntensity,
    required this.humidity,
    required this.precipitationProbability,
    required this.pressureSurfaceLevel,
    required this.rainIntensity,
    required this.sleetIntensity,
    required this.snowIntensity,
    required this.temperature,
    required this.temperatureApparent,
    required this.uvHealthConcern,
    required this.uvIndex,
    required this.visibility,
    required this.weatherCode,
    required this.windDirection,
    required this.windGust,
    required this.windSpeed,
    required this.evapotranspiration,
    required this.iceAccumulation,
    required this.iceAccumulationLweAvg,
    required this.iceAccumulationLweMax,
    required this.iceAccumulationLweMin,
    required this.iceAccumulationLweSum,
    required this.moonriseTime,
    required this.moonsetTime,
    required this.iceAccumulationAvg,
    required this.iceAccumulationMax,
    required this.iceAccumulationMin,
    required this.iceAccumulationSum,
    required this.rainAccumulation,
    required this.rainAccumulationLweAvg,
    required this.rainAccumulationLweMax,
    required this.rainAccumulationLweMin,
    required this.rainAccumulationSum,
    required this.rainIntensityAvg,
    required this.rainIntensityMax,
    required this.rainIntensityMin,
    required this.sleetAccumulation,
    required this.sleetAccumulationLweAvg,
    required this.sleetAccumulationLweMax,
    required this.sleetAccumulationLweMin,
    required this.sleetAccumulationLweSum,
    required this.sleetAccumulationMax,
    required this.sleetAccumulationMin,
    required this.sleetIntensityAvg,
    required this.sleetIntensityMax,
    required this.sleetIntensityMin,
    required this.snowAccumulation,
    required this.snowAccumulationLweAvg,
    required this.snowAccumulationLweMax,
    required this.snowAccumulationLweMin,
    required this.snowAccumulationLweSum,
    required this.snowAccumulationMax,
    required this.snowAccumulationMin,
    required this.snowAccumulationSum,
    required this.sunriseTime,
    required this.sunsetTime,
    required this.temperatureApparentAvg,
    required this.temperatureApparentMax,
    required this.temperatureApparentMin,
    required this.temperatureAvg,
    required this.temperatureMax,
    required this.temperatureMin,
    required this.uvHealthConcernAvg,
    required this.uvHealthConcernMax,
    required this.uvHealthConcernMin,
    required this.uvIndexAvg,
    required this.uvIndexMax,
    required this.uvIndexMin,
    required this.visibilityAvg,
    required this.visibilityMax,
    required this.visibilityMin,
    required this.weatherCodeMax,
    required this.weatherCodeMin,
    required this.windDirectionAvg,
    required this.windGustAvg,
    required this.windGustMax,
    required this.windGustMin,
    required this.windSpeedAvg,
    required this.windSpeedMax,
    required this.windSpeedMin,
  });

  factory ValuesDataModel.fromJson(Map<String, dynamic> json) {
    return ValuesDataModel(
      cloudBase: json['cloudBase']?.toDouble(),
      cloudCeiling: json['cloudCeiling']?.toDouble(),
      cloudCover: json['cloudCover']?.toDouble(),
      dewPoint: json['dewPoint']?.toDouble(),
      freezingRainIntensity: json['freezingRainIntensity']?.toDouble(),
      humidity: json['humidity']?.toDouble(),
      precipitationProbability: json['precipitationProbability']?.toDouble(),
      pressureSurfaceLevel: json['pressureSurfaceLevel']?.toDouble(),
      rainIntensity: json['rainIntensity']?.toDouble(),
      sleetIntensity: json['sleetIntensity']?.toDouble(),
      snowIntensity: json['snowIntensity']?.toDouble(),
      temperature: json['temperature']?.toDouble(),
      temperatureApparent: json['temperatureApparent']?.toDouble(),
      uvHealthConcern: json['uvHealthConcern']?.toDouble(),
      uvIndex: json['uvIndex']?.toDouble(),
      visibility: json['visibility']?.toDouble(),
      weatherCode: json['weatherCode'] as int?,
      windDirection: json['windDirection']?.toDouble(),
      windGust: json['windGust']?.toDouble(),
      windSpeed: json['windSpeed']?.toDouble(),
      evapotranspiration: json['evapotranspiration']?.toDouble(),
      iceAccumulation: json['iceAccumulation']?.toDouble(),
      iceAccumulationLweAvg: json['iceAccumulationLweAvg']?.toDouble(),
      iceAccumulationLweMax: json['iceAccumulationLweMax']?.toDouble(),
      iceAccumulationLweMin: json['iceAccumulationLweMin']?.toDouble(),
      iceAccumulationLweSum: json['iceAccumulationLweSum']?.toDouble(),
      moonriseTime: json['moonriseTime'] as String?,
      moonsetTime: json['moonsetTime'] as String?,
      iceAccumulationAvg: json['iceAccumulationAvg']?.toDouble(),
      iceAccumulationMax: json['iceAccumulationMax']?.toDouble(),
      iceAccumulationMin: json['iceAccumulationMin']?.toDouble(),
      iceAccumulationSum: json['iceAccumulationSum']?.toDouble(),
      rainAccumulation: json['rainAccumulation']?.toDouble(),
      rainAccumulationLweAvg: json['rainAccumulationLweAvg']?.toDouble(),
      rainAccumulationLweMax: json['rainAccumulationLweMax']?.toDouble(),
      rainAccumulationLweMin: json['rainAccumulationLweMin']?.toDouble(),
      rainAccumulationSum: json['rainAccumulationSum']?.toDouble(),
      rainIntensityAvg: json['rainIntensityAvg']?.toDouble(),
      rainIntensityMax: json['rainIntensityMax']?.toDouble(),
      rainIntensityMin: json['rainIntensityMin']?.toDouble(),
      sleetAccumulation: json['sleetAccumulation']?.toDouble(),
      sleetAccumulationLweAvg: json['sleetAccumulationLweAvg']?.toDouble(),
      sleetAccumulationLweMax: json['sleetAccumulationLweMax']?.toDouble(),
      sleetAccumulationLweMin: json['sleetAccumulationLweMin']?.toDouble(),
      sleetAccumulationLweSum: json['sleetAccumulationLweSum']?.toDouble(),
      sleetAccumulationMax: json['sleetAccumulationMax']?.toDouble(),
      sleetAccumulationMin: json['sleetAccumulationMin']?.toDouble(),
      sleetIntensityAvg: json['sleetIntensityAvg']?.toDouble(),
      sleetIntensityMax: json['sleetIntensityMax']?.toDouble(),
      sleetIntensityMin: json['sleetIntensityMin']?.toDouble(),
      snowAccumulation: json['snowAccumulation']?.toDouble(),
      snowAccumulationLweAvg: json['snowAccumulationLweAvg']?.toDouble(),
      snowAccumulationLweMax: json['snowAccumulationLweMax']?.toDouble(),
      snowAccumulationLweMin: json['snowAccumulationLweMin']?.toDouble(),
      snowAccumulationLweSum: json['snowAccumulationLweSum']?.toDouble(),
      snowAccumulationMax: json['snowAccumulationMax']?.toDouble(),
      snowAccumulationMin: json['snowAccumulationMin']?.toDouble(),
      snowAccumulationSum: json['snowAccumulationSum']?.toDouble(),
      sunriseTime: json['sunriseTime'] as String?,
      sunsetTime: json['sunsetTime'] as String?,
      temperatureApparentAvg: json['temperatureApparentAvg']?.toDouble(),
      temperatureApparentMax: json['temperatureApparentMax']?.toDouble(),
      temperatureApparentMin: json['temperatureApparentMin']?.toDouble(),
      temperatureAvg: json['temperatureAvg']?.toDouble(),
      temperatureMax: json['temperatureMax']?.toDouble(),
      temperatureMin: json['temperatureMin']?.toDouble(),
      uvHealthConcernAvg: json['uvHealthConcernAvg']?.toDouble(),
      uvHealthConcernMax: json['uvHealthConcernMax']?.toDouble(),
      uvHealthConcernMin: json['uvHealthConcernMin']?.toDouble(),
      uvIndexAvg: json['uvIndexAvg']?.toDouble(),
      uvIndexMax: json['uvIndexMax']?.toDouble(),
      uvIndexMin: json['uvIndexMin']?.toDouble(),
      visibilityAvg: json['visibilityAvg']?.toDouble(),
      visibilityMax: json['visibilityMax']?.toDouble(),
      visibilityMin: json['visibilityMin']?.toDouble(),
      weatherCodeMax: json['weatherCodeMax'] as int?,
      weatherCodeMin: json['weatherCodeMin'] as int?,
      windDirectionAvg: json['windDirectionAvg']?.toDouble(),
      windGustAvg: json['windGustAvg']?.toDouble(),
      windGustMax: json['windGustMax']?.toDouble(),
      windGustMin: json['windGustMin']?.toDouble(),
      windSpeedAvg: json['windSpeedAvg']?.toDouble(),
      windSpeedMax: json['windSpeedMax']?.toDouble(),
      windSpeedMin: json['windSpeedMin']?.toDouble(),
    );
  }

   Map<String, dynamic> toJson() {
    return {
      'cloudBase': cloudBase,
      'cloudCeiling': cloudCeiling,
      'cloudCover': cloudCover,
      'dewPoint': dewPoint,
      'freezingRainIntensity': freezingRainIntensity,
      'humidity': humidity,
      'precipitationProbability': precipitationProbability,
      'pressureSurfaceLevel': pressureSurfaceLevel,
      'rainIntensity': rainIntensity,
      'sleetIntensity': sleetIntensity,
      'snowIntensity': snowIntensity,
      'temperature': temperature,
      'temperatureApparent': temperatureApparent,
      'uvHealthConcern': uvHealthConcern,
      'uvIndex': uvIndex,
      'visibility': visibility,
      'weatherCode': weatherCode,
      'windDirection': windDirection,
      'windGust': windGust,
      'windSpeed': windSpeed,
      'evapotranspiration': evapotranspiration,
      'iceAccumulation': iceAccumulation,
      'iceAccumulationLweAvg': iceAccumulationLweAvg,
      'iceAccumulationLweMax': iceAccumulationLweMax,
      'iceAccumulationLweMin': iceAccumulationLweMin,
      'iceAccumulationLweSum': iceAccumulationLweSum,
      'moonriseTime': moonriseTime,
      'moonsetTime': moonsetTime,
      'iceAccumulationAvg': iceAccumulationAvg,
      'iceAccumulationMax': iceAccumulationMax,
      'iceAccumulationMin': iceAccumulationMin,
      'iceAccumulationSum': iceAccumulationSum,
      'rainAccumulation': rainAccumulation,
      'rainAccumulationLweAvg': rainAccumulationLweAvg,
      'rainAccumulationLweMax': rainAccumulationLweMax,
      'rainAccumulationLweMin': rainAccumulationLweMin,
      'rainAccumulationSum': rainAccumulationSum,
      'rainIntensityAvg': rainIntensityAvg,
      'rainIntensityMax': rainIntensityMax,
      'rainIntensityMin': rainIntensityMin,
      'sleetAccumulation': sleetAccumulation,
      'sleetAccumulationLweAvg': sleetAccumulationLweAvg,
      'sleetAccumulationLweMax': sleetAccumulationLweMax,
      'sleetAccumulationLweMin': sleetAccumulationLweMin,
      'sleetAccumulationLweSum': sleetAccumulationLweSum,
      'sleetAccumulationMax': sleetAccumulationMax,
      'sleetAccumulationMin': sleetAccumulationMin,
      'sleetIntensityAvg': sleetIntensityAvg,
      'sleetIntensityMax': sleetIntensityMax,
      'sleetIntensityMin': sleetIntensityMin,
      'snowAccumulation': snowAccumulation,
      'snowAccumulationLweAvg': snowAccumulationLweAvg,
      'snowAccumulationLweMax': snowAccumulationLweMax,
      'snowAccumulationLweMin': snowAccumulationLweMin,
      'snowAccumulationLweSum': snowAccumulationLweSum,
      'snowAccumulationMax': snowAccumulationMax,
      'snowAccumulationMin': snowAccumulationMin,
      'snowAccumulationSum': snowAccumulationSum,
      'sunriseTime': sunriseTime,
      'sunsetTime': sunsetTime,
      'temperatureApparentAvg': temperatureApparentAvg,
      'temperatureApparentMax': temperatureApparentMax,
      'temperatureApparentMin': temperatureApparentMin,
      'temperatureAvg': temperatureAvg,
      'temperatureMax': temperatureMax,
      'temperatureMin': temperatureMin,
      'uvHealthConcernAvg': uvHealthConcernAvg,
      'uvHealthConcernMax': uvHealthConcernMax,
      'uvHealthConcernMin': uvHealthConcernMin,
      'uvIndexAvg': uvIndexAvg,
      'uvIndexMax': uvIndexMax,
      'uvIndexMin': uvIndexMin,
      'visibilityAvg': visibilityAvg,
      'visibilityMax': visibilityMax,
      'visibilityMin': visibilityMin,
      'weatherCodeMax': weatherCodeMax,
      'weatherCodeMin': weatherCodeMin,
      'windDirectionAvg': windDirectionAvg,
      'windGustAvg': windGustAvg,
      'windGustMax': windGustMax,
      'windGustMin': windGustMin,
      'windSpeedAvg': windSpeedAvg,
      'windSpeedMax': windSpeedMax,
      'windSpeedMin': windSpeedMin,
    };
  }

}
