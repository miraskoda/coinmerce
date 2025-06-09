// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Roi _$RoiFromJson(Map<String, dynamic> json) => Roi(
  times: (json['times'] as num).toDouble(),
  currency: json['currency'] as String,
  percentage: (json['percentage'] as num).toDouble(),
);

Map<String, dynamic> _$RoiToJson(Roi instance) => <String, dynamic>{
  'times': instance.times,
  'currency': instance.currency,
  'percentage': instance.percentage,
};
