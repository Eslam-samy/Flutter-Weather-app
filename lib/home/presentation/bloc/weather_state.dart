part of 'weather_bloc.dart';

 class WeatherState extends Equatable {
  final HomeScreenUiState? uiState;
  const WeatherState({this.uiState});
  @override
  List<Object> get props => [uiState ?? ""];
}
