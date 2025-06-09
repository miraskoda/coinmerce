import 'package:freezed_annotation/freezed_annotation.dart';

part 'sparkline_in_7d.freezed.dart';
part 'sparkline_in_7d.g.dart';

@freezed
sealed class SparklineIn7d with _$SparklineIn7d {
  const factory SparklineIn7d({required List<double> price}) = _SparklineIn7d;

  factory SparklineIn7d.fromJson(Map<String, dynamic> json) => _$SparklineIn7dFromJson(json);
}
