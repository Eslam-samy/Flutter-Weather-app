import 'package:get_it/get_it.dart';
import 'package:weather_app/di/singleton_module.dart';
import 'package:weather_app/home/di/home_module.dart';

final getIt = GetIt.instance;

Future<void> initGetIT() async {
  // TODO why?
  await singletonModule();
  await homeModule();
}
