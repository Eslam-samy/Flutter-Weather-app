import 'package:equatable/equatable.dart';

class ForeCastUiModel extends Equatable {
  final String? time;
  final String? avgTemp;
  final String? type;
  final String? iconSrc;

  const ForeCastUiModel({
    this.time,
    this.avgTemp,
    this.type,
    this.iconSrc
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        time,
        avgTemp,
        type,
        iconSrc
      ];
}
