import 'package:coinmerce/data/models/coin.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET('/markets')
  Future<List<Coin>> getMarkets(
    @Query('vs_currency') String currency,
    @Query('order') String order,
    @Query('per_page') int perPage,
    @Query('page') int page,
    @Query('sparkline') bool sparkline,
  );
}
