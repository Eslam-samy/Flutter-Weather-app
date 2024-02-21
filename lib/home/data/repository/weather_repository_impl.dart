import 'package:dio/dio.dart';
import 'package:weather_app/config.dart';
import 'package:weather_app/core/network_info/network_info.dart';
import 'package:weather_app/core/resources/data_state.dart';
import 'package:weather_app/home/data/data_source/local/local_data_source.dart';
import 'package:weather_app/home/data/data_source/remote/remote_data_source.dart';
import 'package:weather_app/home/data/mapper/weather_mapper.dart';
import 'package:weather_app/home/data/model/get_weather_data_model.dart';
import 'package:weather_app/home/domain/model/get_weather_domain_model.dart';
import 'package:weather_app/home/domain/repository/get_weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final GetWeatherRemoteDataSource getWeatherRemoteDataSource;
  final WeatherLocalDataSource local;
  final NetworkInfo networkInfo;

  WeatherRepositoryImpl(
      this.getWeatherRemoteDataSource, this.networkInfo, this.local);

  @override
  Future<DataState<GetWeatherDomainModel>> getWeather(String location) async {
    if (await networkInfo.isConnected) {
      // Adjust the type parameter when calling getPagingListRemoteDataSource.getPagingList
      final result =
          await getWeatherRemoteDataSource.getWeather(location, apikey);
      // If the result is DataSuccess, return it as-is
      if (result is DataSuccess<GetWeatherDataModel>) {
        await local.insertWather(result.data!);
        return DataSuccess(result.data!.toDomainModel());
      } else if (result is DataFailed) {
        // If the result is DataFailed, handle the error accordingly
        return DataFailed(result.error!);
      }
    } else {
      final localWeather = await local.getWeather();
      if (localWeather is DataSuccess<GetWeatherDataModel>) {
        return DataSuccess(localWeather.data!.toDomainModel());
      }
      return DataFailed(DioException(
        error: 'No internet connection',
        requestOptions: RequestOptions(path: 'your_api_path_here'),
      ));
    }
    print("network11111");

    // Add a return statement for the case when networkInfo.isConnected is false
    return DataFailed(DioException(
      error: 'No internet connection',
      requestOptions: RequestOptions(path: 'your_api_path_here'),
    ));
  }
}
