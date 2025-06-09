import 'package:json_annotation/json_annotation.dart';

part 'roi.g.dart';

@JsonSerializable()
class Roi {
  Roi({required this.times, required this.currency, required this.percentage});

  factory Roi.fromJson(Map<String, dynamic> json) => _$RoiFromJson(json);
  final double times;
  final String currency;
  final double percentage;
  Map<String, dynamic> toJson() => _$RoiToJson(this);
}
