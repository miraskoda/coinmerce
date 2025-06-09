// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UIStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UIStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UIStatus()';
}


}

/// @nodoc
class $UIStatusCopyWith<$Res>  {
$UIStatusCopyWith(UIStatus _, $Res Function(UIStatus) __);
}


/// @nodoc


class UIInitial implements UIStatus {
  const UIInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UIInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UIStatus.initial()';
}


}




/// @nodoc


class UILoading implements UIStatus {
  const UILoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UILoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UIStatus.loading()';
}


}




/// @nodoc


class UILoadFailed implements UIStatus {
  const UILoadFailed({required this.message});
  

 final  String message;

/// Create a copy of UIStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UILoadFailedCopyWith<UILoadFailed> get copyWith => _$UILoadFailedCopyWithImpl<UILoadFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UILoadFailed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UIStatus.loadFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class $UILoadFailedCopyWith<$Res> implements $UIStatusCopyWith<$Res> {
  factory $UILoadFailedCopyWith(UILoadFailed value, $Res Function(UILoadFailed) _then) = _$UILoadFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UILoadFailedCopyWithImpl<$Res>
    implements $UILoadFailedCopyWith<$Res> {
  _$UILoadFailedCopyWithImpl(this._self, this._then);

  final UILoadFailed _self;
  final $Res Function(UILoadFailed) _then;

/// Create a copy of UIStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UILoadFailed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UILoadSuccess implements UIStatus {
  const UILoadSuccess({this.message});
  

 final  String? message;

/// Create a copy of UIStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UILoadSuccessCopyWith<UILoadSuccess> get copyWith => _$UILoadSuccessCopyWithImpl<UILoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UILoadSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UIStatus.loadSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $UILoadSuccessCopyWith<$Res> implements $UIStatusCopyWith<$Res> {
  factory $UILoadSuccessCopyWith(UILoadSuccess value, $Res Function(UILoadSuccess) _then) = _$UILoadSuccessCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$UILoadSuccessCopyWithImpl<$Res>
    implements $UILoadSuccessCopyWith<$Res> {
  _$UILoadSuccessCopyWithImpl(this._self, this._then);

  final UILoadSuccess _self;
  final $Res Function(UILoadSuccess) _then;

/// Create a copy of UIStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(UILoadSuccess(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
