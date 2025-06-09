// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoinEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinEvent()';
}


}

/// @nodoc
class $CoinEventCopyWith<$Res>  {
$CoinEventCopyWith(CoinEvent _, $Res Function(CoinEvent) __);
}


/// @nodoc


class _Init implements CoinEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinEvent.init()';
}


}




/// @nodoc


class _Search implements CoinEvent {
  const _Search({required this.phrase});
  

 final  String phrase;

/// Create a copy of CoinEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCopyWith<_Search> get copyWith => __$SearchCopyWithImpl<_Search>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Search&&(identical(other.phrase, phrase) || other.phrase == phrase));
}


@override
int get hashCode => Object.hash(runtimeType,phrase);

@override
String toString() {
  return 'CoinEvent.search(phrase: $phrase)';
}


}

/// @nodoc
abstract mixin class _$SearchCopyWith<$Res> implements $CoinEventCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) _then) = __$SearchCopyWithImpl;
@useResult
$Res call({
 String phrase
});




}
/// @nodoc
class __$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(this._self, this._then);

  final _Search _self;
  final $Res Function(_Search) _then;

/// Create a copy of CoinEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phrase = null,}) {
  return _then(_Search(
phrase: null == phrase ? _self.phrase : phrase // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ReSort implements CoinEvent {
  const _ReSort();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReSort);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinEvent.reSort()';
}


}




/// @nodoc


class _Refresh implements CoinEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinEvent.refresh()';
}


}




/// @nodoc
mixin _$CoinState {

 bool get isLoading; bool get isError; List<Coin> get coinsData;
/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoinStateCopyWith<CoinState> get copyWith => _$CoinStateCopyWithImpl<CoinState>(this as CoinState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&const DeepCollectionEquality().equals(other.coinsData, coinsData));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,const DeepCollectionEquality().hash(coinsData));

@override
String toString() {
  return 'CoinState(isLoading: $isLoading, isError: $isError, coinsData: $coinsData)';
}


}

/// @nodoc
abstract mixin class $CoinStateCopyWith<$Res>  {
  factory $CoinStateCopyWith(CoinState value, $Res Function(CoinState) _then) = _$CoinStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isError, List<Coin> coinsData
});




}
/// @nodoc
class _$CoinStateCopyWithImpl<$Res>
    implements $CoinStateCopyWith<$Res> {
  _$CoinStateCopyWithImpl(this._self, this._then);

  final CoinState _self;
  final $Res Function(CoinState) _then;

/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isError = null,Object? coinsData = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,coinsData: null == coinsData ? _self.coinsData : coinsData // ignore: cast_nullable_to_non_nullable
as List<Coin>,
  ));
}

}


/// @nodoc


class _CoinState implements CoinState {
  const _CoinState({this.isLoading = false, this.isError = false, final  List<Coin> coinsData = const []}): _coinsData = coinsData;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isError;
 final  List<Coin> _coinsData;
@override@JsonKey() List<Coin> get coinsData {
  if (_coinsData is EqualUnmodifiableListView) return _coinsData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coinsData);
}


/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoinStateCopyWith<_CoinState> get copyWith => __$CoinStateCopyWithImpl<_CoinState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoinState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&const DeepCollectionEquality().equals(other._coinsData, _coinsData));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,const DeepCollectionEquality().hash(_coinsData));

@override
String toString() {
  return 'CoinState(isLoading: $isLoading, isError: $isError, coinsData: $coinsData)';
}


}

/// @nodoc
abstract mixin class _$CoinStateCopyWith<$Res> implements $CoinStateCopyWith<$Res> {
  factory _$CoinStateCopyWith(_CoinState value, $Res Function(_CoinState) _then) = __$CoinStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isError, List<Coin> coinsData
});




}
/// @nodoc
class __$CoinStateCopyWithImpl<$Res>
    implements _$CoinStateCopyWith<$Res> {
  __$CoinStateCopyWithImpl(this._self, this._then);

  final _CoinState _self;
  final $Res Function(_CoinState) _then;

/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isError = null,Object? coinsData = null,}) {
  return _then(_CoinState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,coinsData: null == coinsData ? _self._coinsData : coinsData // ignore: cast_nullable_to_non_nullable
as List<Coin>,
  ));
}


}

// dart format on
