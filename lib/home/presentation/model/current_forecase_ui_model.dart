import 'package:equatable/equatable.dart';

class CurrentForecastUiModel extends Equatable {
  final String? address;
  final String? avgtemp;
  final String? type;
  final String? hTemp;
  final String? lTemp;
  final String? iconSrc;

  const CurrentForecastUiModel({
    this.address,
    this.avgtemp,
    this.type,
    this.hTemp,
    this.lTemp,
    this.iconSrc
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        address,
        avgtemp,
        type,
        hTemp,
        lTemp,
        iconSrc
      ];
}
