import 'package:weather_app/core/resources/data_state.dart';
import 'package:weather_app/home/domain/model/get_weather_domain_model.dart';

abstract class WeatherRepository {
  Future<DataState<GetWeatherDomainModel>> getWeather(String location);
}
