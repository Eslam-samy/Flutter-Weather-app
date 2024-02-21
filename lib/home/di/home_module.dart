import 'package:weather_app/di/app_module.dart';
import 'package:weather_app/home/data/data_source/local/local_data_source.dart';
import 'package:weather_app/home/data/data_source/remote/remote_data_source.dart';
import 'package:weather_app/home/data/repository/weather_repository_impl.dart';
import 'package:weather_app/home/domain/repository/get_weather_repository.dart';
import 'package:weather_app/home/domain/usecase/get_current_location_usecase.dart';
import 'package:weather_app/home/domain/usecase/get_weather_usecase.dart';
import 'package:weather_app/home/presentation/bloc/weather_bloc.dart';

homeModule() {
  // data
  getIt.registerFactory<GetWeatherRemoteDataSource>(
    () => GetWeatherRemoteImpl(getIt.get()),
  );
  getIt.registerFactory<WeatherLocalDataSource>(
    () => GetWeatherLocalImpl(getIt.get()),
  );

  getIt.registerFactory<WeatherRepository>(
    () => WeatherRepositoryImpl(getIt.get(), getIt.get(), getIt.get()),
  );

  // domain
  getIt.registerFactory<GetWeatheruseCase>(
    () => GetWeatheruseCase(getIt.get()),
  );
  getIt.registerFactory<GetCurrentLocationUseCase>(
    () => GetCurrentLocationUseCase(),
  );
  // presentation
  getIt.registerFactory<WeatherBloc>(
    () => WeatherBloc(getIt.get(), getIt.get()),
  );
}
