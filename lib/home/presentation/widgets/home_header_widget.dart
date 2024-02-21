import 'package:flutter/material.dart';
import 'package:weather_app/config/theme/app_theme.dart';
import 'package:weather_app/core/constants/constants.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({
    super.key,
    required this.location,
    required this.temp,
    required this.label,
    required this.highValue,
    required this.lowValue,
  });
  final String location;
  final String temp;
  final String label;
  final String highValue;
  final String lowValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          location,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontSize: 34,
              ),
        ),
        const SizedBox(
          height: mainAppPadding,
        ),
        Text(
          '$temp°',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.white, fontSize: 90, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: mainAppPadding,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: grayColor, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: mainAppPadding,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "H: $highValue °C",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              width: mainAppPadding,
            ),
            Text(
              "L: $lowValue °C",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white, fontSize: 18),
            )
          ],
        )
      ],
    );
  }
}
