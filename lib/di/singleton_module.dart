import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weather_app/core/api/api_client.dart';
import 'package:weather_app/core/local/sql_lite.dart';
import 'package:weather_app/core/network_info/network_info.dart';
import 'package:weather_app/di/app_module.dart';

singletonModule() async {
  // SharedPreferences
  getIt.registerSingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });

  // dio

  getIt.registerLazySingleton<Dio>(() => ApiClient.getInstance());

  // sqflite
  final db = await SqliteService.initializeDB();
  getIt.registerSingleton<Database>(db);

  // InternetConnectionChecker
  getIt.registerLazySingleton(() => InternetConnection());
  getIt.registerLazySingleton(() => Connectivity());
  getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplUsingInternetConnectivityPlus(getIt()));
}
