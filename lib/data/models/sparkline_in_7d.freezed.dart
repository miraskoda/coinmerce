// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sparkline_in_7d.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SparklineIn7d {

 List<double> get price;
/// Create a copy of SparklineIn7d
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SparklineIn7dCopyWith<SparklineIn7d> get copyWith => _$SparklineIn7dCopyWithImpl<SparklineIn7d>(this as SparklineIn7d, _$identity);

  /// Serializes this SparklineIn7d to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SparklineIn7d&&const DeepCollectionEquality().equals(other.price, price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(price));

@override
String toString() {
  return 'SparklineIn7d(price: $price)';
}


}

/// @nodoc
abstract mixin class $SparklineIn7dCopyWith<$Res>  {
  factory $SparklineIn7dCopyWith(SparklineIn7d value, $Res Function(SparklineIn7d) _then) = _$SparklineIn7dCopyWithImpl;
@useResult
$Res call({
 List<double> price
});




}
/// @nodoc
class _$SparklineIn7dCopyWithImpl<$Res>
    implements $SparklineIn7dCopyWith<$Res> {
  _$SparklineIn7dCopyWithImpl(this._self, this._then);

  final SparklineIn7d _self;
  final $Res Function(SparklineIn7d) _then;

/// Create a copy of SparklineIn7d
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? price = null,}) {
  return _then(_self.copyWith(
price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SparklineIn7d implements SparklineIn7d {
  const _SparklineIn7d({required final  List<double> price}): _price = price;
  factory _SparklineIn7d.fromJson(Map<String, dynamic> json) => _$SparklineIn7dFromJson(json);

 final  List<double> _price;
@override List<double> get price {
  if (_price is EqualUnmodifiableListView) return _price;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_price);
}


/// Create a copy of SparklineIn7d
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SparklineIn7dCopyWith<_SparklineIn7d> get copyWith => __$SparklineIn7dCopyWithImpl<_SparklineIn7d>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SparklineIn7dToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SparklineIn7d&&const DeepCollectionEquality().equals(other._price, _price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_price));

@override
String toString() {
  return 'SparklineIn7d(price: $price)';
}


}

/// @nodoc
abstract mixin class _$SparklineIn7dCopyWith<$Res> implements $SparklineIn7dCopyWith<$Res> {
  factory _$SparklineIn7dCopyWith(_SparklineIn7d value, $Res Function(_SparklineIn7d) _then) = __$SparklineIn7dCopyWithImpl;
@override @useResult
$Res call({
 List<double> price
});




}
/// @nodoc
class __$SparklineIn7dCopyWithImpl<$Res>
    implements _$SparklineIn7dCopyWith<$Res> {
  __$SparklineIn7dCopyWithImpl(this._self, this._then);

  final _SparklineIn7d _self;
  final $Res Function(_SparklineIn7d) _then;

/// Create a copy of SparklineIn7d
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? price = null,}) {
  return _then(_SparklineIn7d(
price: null == price ? _self._price : price // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}

// dart format on
