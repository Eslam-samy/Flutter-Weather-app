import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/constants/constants.dart';
import 'package:weather_app/core/widgets/main_app_loader.dart';
import 'package:weather_app/core/widgets/network_error.dart';
import 'package:weather_app/di/app_module.dart';
import 'package:weather_app/home/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/home/presentation/widgets/home_header_widget.dart';
import 'package:weather_app/home/presentation/widgets/weather_bottomsheet_widget.dart';
import 'package:weather_app/sun.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          homeBackgroundAsset,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Positioned(right: 0,top: 0, child: SunMoonWithShadow()),
        BlocProvider<WeatherBloc>(
          create: (context) => getIt(),
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              if (state.uiState?.isLoading == true) {
                return const MainAppLoader();
              }
              if (state.uiState?.error != null) {
                return NetworkErrorWidget(
                  text: state.uiState?.error?.message,
                  onclick: () {
                    BlocProvider.of<WeatherBloc>(context).add(ReloadEvent());
                  },
                );
              }

              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        HomeHeaderWidget(
                          //todo change this to be dynamic using geocoding
                          location: "Mansoura",
                          temp: state.uiState?.result?.current?.avgtemp ??
                              "no data",
                          label:
                              state.uiState?.result?.current?.type ?? "no type",
                          highValue:
                              state.uiState?.result?.current?.hTemp ?? "",
                          lowValue: state.uiState?.result?.current?.lTemp ?? "",
                        ),
                        Center(
                          child: Image.asset(
                            houseIconAsset,
                            width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: WeatherBottomSheetWidget(
                      data: state.uiState?.result,
                      filter: state.uiState!.filter!,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    ));
  }
}
