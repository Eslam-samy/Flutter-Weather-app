import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/constants.dart';
import 'package:weather_app/home/presentation/widgets/filter_type_widget.dart';

class WeatherBottomSheetSelectorWidget extends StatelessWidget {
  const WeatherBottomSheetSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(mainAppPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilterTypeWidget(selected: false, value: "Hourly forecast"),
          FilterTypeWidget(selected: false, value: "Daily forecast"),
        ],
      ),
    );
  }
}
