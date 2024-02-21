import 'package:dio/dio.dart';
import 'package:weather_app/core/constants/constants.dart';
import 'package:weather_app/core/resources/data_state.dart';
import 'package:weather_app/home/data/model/get_weather_data_model.dart';

abstract class GetWeatherRemoteDataSource {
  Future<DataState<GetWeatherDataModel>> getWeather(
      String location, String apiKey);
}

class GetWeatherRemoteImpl implements GetWeatherRemoteDataSource {
  final Dio dio;

  GetWeatherRemoteImpl(this.dio);

  @override
  Future<DataState<GetWeatherDataModel>> getWeather(
      String location, String key) async {
    try {
      final response = await dio
          .get(baseUrl, queryParameters: {"location": location, "apikey": key});

      if (response.statusCode == 200) {
        final data = response.data;
        return DataSuccess(GetWeatherDataModel.fromJson(data));
      } else {
        // Throw DioError for non-200 status codes
        throw DioException(
          response: response,
          error: 'Failed to load data',
          requestOptions: RequestOptions(path: baseUrl),
        );
      }
    } on DioException catch (dioError) {
      // Throw DioError for Dio-specific errors
      return DataFailed(dioError);
    } catch (error) {
      print("Hello error ${error.toString()}}");

      // Throw DioError for generic errors
      return DataFailed(
        DioException(
          error: 'Failed to connect to the server',
          requestOptions: RequestOptions(path: baseUrl),
        ),
      );
    }
  }
}
