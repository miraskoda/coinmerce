part of 'coin_bloc.dart';

@Freezed()
class CoinEvent with _$CoinEvent {
  const factory CoinEvent.init() = _Init;
  const factory CoinEvent.search({required String phrase}) = _Search;
  const factory CoinEvent.reSort() = _ReSort;
}
