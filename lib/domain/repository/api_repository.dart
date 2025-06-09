import 'package:coinmerce/core/data_state.dart';
import 'package:coinmerce/data/models/coin.dart';
import 'package:dartz/dartz.dart';

abstract class ApiRepository {
  Future<Either<DataFailed<String>, DataSuccess<List<Coin>>>> fetchCoins();
}
