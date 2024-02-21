import 'package:dio/dio.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weather_app/core/local/constants.dart';
import 'package:weather_app/core/resources/data_state.dart';
import 'package:weather_app/home/data/model/get_weather_data_model.dart';

abstract class WeatherLocalDataSource {
  Future<DataState<GetWeatherDataModel>> getWeather();
  Future<void> insertWather(GetWeatherDataModel data);
}

class GetWeatherLocalImpl implements WeatherLocalDataSource {
  final Database sqllite;

  GetWeatherLocalImpl(this.sqllite);

  @override
  Future<DataState<GetWeatherDataModel>> getWeather() async {
    try {

      List<Map<String, dynamic>> results =
          await sqllite.query(weatherTableName);
      if (results.isNotEmpty) {
        GetWeatherDataModel data = GetWeatherDataModel.fromJsonLocal(results.first);
        return DataSuccess(data);
      } else {
        return DataFailed(DioException(
            requestOptions: RequestOptions(),
            message: "No weather data available"));
      }
    } catch (e) {
            print(" locallllllllll $e");

      return DataFailed(DioException(
          requestOptions: RequestOptions(),
          message: "Error retrieving weather data: $e"));
    }
  }

  @override
  Future<void> insertWather(GetWeatherDataModel data) async {
    await sqllite.rawDelete("delete from $weatherTableName");
    await sqllite.insert(weatherTableName, data.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }
}
