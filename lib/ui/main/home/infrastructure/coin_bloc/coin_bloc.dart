import 'dart:async';

import 'package:coinmerce/api/model/coin.dart';
import 'package:coinmerce/api/repository/api_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_bloc.freezed.dart';
part 'coin_event.dart';
part 'coin_state.dart';

class CoinBloc extends Bloc<CoinEvent, CoinState> {
  CoinBloc({required this.apiRepository}) : super(CoinState.init()) {
    on<_Init>(_init);
    on<_Refresh>(_refresh);
  }

  final ApiRepository apiRepository;

  Future<void> _init(_Init e, Emitter<CoinState> emit) async {
    emit(state.copyWith(isLoading: true));
    //fetch Coins
    final response = await apiRepository.fetchCoins();
    response.fold(
      (l) {
        emit(state.copyWith(isLoading: false, isError: true));
      },
      (r) {
        emit(state.copyWith(isLoading: false, coinsData: r.data!, isError: false));
      },
    );
  }

  Future<void> _refresh(_Refresh e, Emitter<CoinState> emit) async {
    final response = await apiRepository.fetchCoins();
    response.fold(
      (l) {
        emit(state.copyWith(isError: true));
      },
      (r) {
        emit(state.copyWith(coinsData: r.data!, isError: false));
      },
    );
  }
}
