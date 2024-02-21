import 'package:flutter/material.dart';
import 'package:weather_app/home/presentation/model/forecast_ui_model.dart';

class WeatherListItem extends StatelessWidget {
  const WeatherListItem({super.key, this.model});
  final ForeCastUiModel? model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 146,
      child: Card(
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.5, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  model?.time ?? "",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
                Image.asset(model?.iconSrc ?? "",width: 30,height: 30,),
                Text(
                  "${model?.avgTemp}°",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
              ],
            )),
      ),
    );
  }
}
