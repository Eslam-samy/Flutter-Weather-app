import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/core/resources/data_state.dart';
import 'package:weather_app/home/domain/usecase/get_current_location_usecase.dart';
import 'package:weather_app/home/domain/usecase/get_weather_usecase.dart';
import 'package:weather_app/home/presentation/contract/home_screen_ui_state.dart';
import 'package:weather_app/home/presentation/mapper/weather_ui_mapper.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetCurrentLocationUseCase getCurrentLocationUseCase;
  final GetWeatheruseCase getWeatheruseCase;
  WeatherBloc(this.getCurrentLocationUseCase, this.getWeatheruseCase)
      : super(const WeatherState(
            uiState: HomeScreenUiState(isLoading: true, filter: 0))) {
    on<GetlocationEvent>((event, emit) async {
      final locationResult = await getCurrentLocationUseCase();
      if (locationResult != null) {
        final dataState = await getWeatheruseCase(
            "${locationResult.latitude} ,${locationResult.longitude}");

        if (dataState is DataSuccess) {
          emit(
            WeatherState(
              uiState: state.uiState?.copyWith(
                  isLoading: false, result: dataState.data!.toUiModel()),
            ),
          );
        }

        if (dataState is DataFailed) {
          final exception = dataState.error!;
          emit(WeatherState(
              uiState:
                  state.uiState?.copyWith(error: exception, isLoading: false)));
        }
      } else {
        emit(
          WeatherState(
            uiState: state.uiState!.copyWith(
              isLoading: false,
              error: DioException(
                  requestOptions: RequestOptions(),
                  message: "Cant featch user location"),
            ),
          ),
        );
      }
    });
    on<ReloadEvent>((event, emit) async {
      emit(
        WeatherState(
          uiState: state.uiState?.copyWith(isLoading: true, error: null),
        ),
      );
      add(GetlocationEvent());
    });
    add(GetlocationEvent());
  }
}
