import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:location/location.dart';
import 'package:weather_app/home/presentation/model/home_ui_model.dart';

class HomeScreenUiState extends Equatable {
  final DioException? error;
  final bool? permissionGranted;
  final bool? isLoading;
  final HomeUiModel? result;
  final LocationData? location;
  final int? filter;

  const HomeScreenUiState(
      {this.error,
      this.permissionGranted,
      this.isLoading,
      this.result,
      this.location,
      this.filter});

  @override
  // TODO: implement props
  List<Object?> get props => [
        error,
        permissionGranted,
        isLoading,
        result,
        location,
        filter,
      ];

  HomeScreenUiState copyWith({
    DioException? error,
    bool? permissionGranted,
    bool? isLoading,
    HomeUiModel? result,
    LocationData? locationData,
    int? filter,
  }) {
    return HomeScreenUiState(
        error: error,
        permissionGranted: permissionGranted ?? this.permissionGranted,
        isLoading: isLoading ?? this.isLoading,
        result: result ?? this.result,
        location: locationData ?? location,
        filter: filter ?? this.filter);
  }
}
