import 'package:coinmerce/api/client/api_client.dart';
import 'package:coinmerce/api/model/coin.dart';
import 'package:coinmerce/core/data_state.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class ApiRepository {
  Future<Either<DataFailed<String>, DataSuccess<List<Coin>>>> fetchCoins();
}

class ApiRepositoryImpl implements ApiRepository {
  ApiRepositoryImpl(this._apiClient);
  final ApiClient _apiClient;

  @override
  Future<Either<DataFailed<String>, DataSuccess<List<Coin>>>> fetchCoins() async {
    try {
      final response = await _apiClient.getMarkets();
      return Right(DataSuccess(response));
    } on DioException catch (e) {
      if (kDebugMode) {
        print('Error fetching data: $e');
      }
      return Left(DataFailed(e));
    }
  }
}
