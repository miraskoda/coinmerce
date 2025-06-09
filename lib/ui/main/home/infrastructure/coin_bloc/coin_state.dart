part of 'coin_bloc.dart';

@freezed
sealed class CoinState with _$CoinState {
  const factory CoinState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default([]) List<Coin> coinsData,
  }) = _CoinState;

  factory CoinState.init() => const CoinState();
}
