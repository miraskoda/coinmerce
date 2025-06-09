import 'dart:async';

import 'package:coinmerce/data/models/coin.dart';
import 'package:coinmerce/domain/repository/api_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_bloc.freezed.dart';
part 'coin_event.dart';
part 'coin_state.dart';

class CoinBloc extends Bloc<CoinEvent, CoinState> {
  CoinBloc({required this.apiRepository}) : super(CoinState.init()) {
    on<_Init>(_init);
    on<_Refresh>(_refresh);
    on<_Search>(_search);
  }

  final ApiRepository apiRepository;
  List<Coin> _allCoins = [];

  Future<void> _init(_Init e, Emitter<CoinState> emit) async {
    emit(state.copyWith(isLoading: true));
    //fetch Coins
    final response = await apiRepository.fetchCoins();
    response.fold(
      (l) {
        emit(state.copyWith(isLoading: false, isError: true));
      },
      (r) {
        _allCoins = r.data!;
        emit(state.copyWith(isLoading: false, coinsData: _allCoins, isError: false));
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
        _allCoins = r.data!;
        emit(state.copyWith(coinsData: _allCoins, isError: false));
      },
    );
  }

  void _search(_Search e, Emitter<CoinState> emit) {
    if (e.phrase.isEmpty) {
      emit(state.copyWith(coinsData: _allCoins));
      return;
    }

    final searchPhrase = e.phrase.toLowerCase();
    final filteredCoins =
        _allCoins.where((coin) {
          return coin.name.toLowerCase().contains(searchPhrase) ||
              coin.symbol.toLowerCase().contains(searchPhrase) ||
              coin.id.toLowerCase().contains(searchPhrase);
        }).toList();

    emit(state.copyWith(coinsData: filteredCoins));
  }
}
