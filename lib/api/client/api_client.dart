import 'package:coinmerce/api/model/coin.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET('/markets?vs_currency=usd&order=market_cap_desc&per_page=10&page=1&sparkline=false')
  Future<List<Coin>> getMarkets();
}
