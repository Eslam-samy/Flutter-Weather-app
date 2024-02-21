import 'package:flutter/material.dart';
import 'package:weather_app/config/theme/app_theme.dart';

class FilterTypeWidget extends StatelessWidget {
  const FilterTypeWidget(
      {super.key, required this.value, required this.selected});
  final String value;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: grayColor.withOpacity(.8),
              fontSize: 15,
              fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
