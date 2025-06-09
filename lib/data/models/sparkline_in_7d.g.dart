// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sparkline_in_7d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SparklineIn7d _$SparklineIn7dFromJson(Map<String, dynamic> json) =>
    _SparklineIn7d(
      price:
          (json['price'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
    );

Map<String, dynamic> _$SparklineIn7dToJson(_SparklineIn7d instance) =>
    <String, dynamic>{'price': instance.price};
