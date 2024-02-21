import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/config/theme/app_theme.dart';
import 'package:weather_app/core/constants/constants.dart';
import 'package:weather_app/home/presentation/model/home_ui_model.dart';
import 'package:weather_app/home/presentation/widgets/weather_list_item.dart';
import 'package:weather_app/home/presentation/widgets/weather_bottomsheet_selector_widget.dart';

class WeatherBottomSheetWidget extends StatelessWidget {
  const WeatherBottomSheetWidget({
    Key? key,
    this.data,
    required this.filter,
  }) : super(key: key);

  final HomeUiModel? data;
  final int filter;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Removed the fixed height constraint
      height: 320,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: linearGradient,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(mainCornerRadius),
          topLeft: Radius.circular(mainCornerRadius),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(mainCornerRadius),
          topLeft: Radius.circular(mainCornerRadius),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0,
          ),
          child: Padding(
            padding: const EdgeInsets.all(mainAppPadding),
            child: Column(
              children: [
                const WeatherBottomSheetSelectorWidget(),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.white.withOpacity(.5),
                ),
                const SizedBox(
                  height: mainAppPadding,
                ),
                SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return filter == 0
                          ? WeatherListItem(
                              model: data!.hourlyForecast?[index],
                            )
                          : WeatherListItem(
                              model: data!.weeklyForecast?[index],
                            );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: filter == 0
                        ? data!.hourlyForecast!.length
                        : data!.weeklyForecast!.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
