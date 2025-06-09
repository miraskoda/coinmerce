import 'package:coinmerce/core/data_state.dart';
import 'package:coinmerce/data/models/coin.dart';
import 'package:coinmerce/domain/client/api_client.dart';
import 'package:coinmerce/domain/repository/api_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiRepositoryImpl implements ApiRepository {
  ApiRepositoryImpl(this._apiClient);
  final ApiClient _apiClient;

  @override
  Future<Either<DataFailed<String>, DataSuccess<List<Coin>>>> fetchCoins() async {
    try {
      final response = await _apiClient.getMarkets('usd', 'market_cap_desc', 10, 1, true);
      return Right(DataSuccess(response));
    } on DioException catch (e) {
      if (kDebugMode) {
        print('Error fetching data: $e');
      }
      return Left(DataFailed(e));
    }
  }
}
