part of 'weather_bloc.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class GetWeatherEvent extends WeatherEvent {}

class GetlocationEvent extends WeatherEvent {}

class ReloadEvent extends WeatherEvent {}
