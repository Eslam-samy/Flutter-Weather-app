import 'package:weather_app/core/resources/data_state.dart';
import 'package:weather_app/home/domain/model/get_weather_domain_model.dart';
import 'package:weather_app/home/domain/repository/get_weather_repository.dart';

class GetWeatheruseCase {
  final WeatherRepository _repository;

  GetWeatheruseCase(this._repository);

  Future<DataState<GetWeatherDomainModel>> call(String location) {
    return _repository.getWeather(location);
  }
}
