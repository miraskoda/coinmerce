import 'package:coinmerce/api/model/roi.dart';
import 'package:json_annotation/json_annotation.dart';

part 'coin.g.dart';

@JsonSerializable()
class Coin {
  Coin({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.marketCap,
    required this.marketCapRank,
    required this.fullyDilutedValuation,
    required this.totalVolume,
    required this.high24h,
    required this.low24h,
    required this.priceChange24h,
    required this.priceChangePercentage24h,
    required this.marketCapChange24h,
    required this.marketCapChangePercentage24h,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.maxSupply,
    required this.ath,
    required this.athChangePercentage,
    required this.athDate,
    required this.atl,
    required this.atlChangePercentage,
    required this.atlDate,
    required this.roi,
    required this.lastUpdated,
  });

  factory Coin.fromJson(Map<String, dynamic> json) => _$CoinFromJson(json);

  final String id;
  final String symbol;
  final String name;
  final String image;
  @JsonKey(name: 'current_price')
  final double currentPrice;
  @JsonKey(name: 'market_cap')
  final int marketCap;
  @JsonKey(name: 'market_cap_rank')
  final int marketCapRank;
  @JsonKey(name: 'fully_diluted_valuation')
  final int? fullyDilutedValuation;
  @JsonKey(name: 'total_volume')
  final int totalVolume;
  @JsonKey(name: 'high_24h')
  final double high24h;
  @JsonKey(name: 'low_24h')
  final double low24h;
  @JsonKey(name: 'price_change_24h')
  final double priceChange24h;
  @JsonKey(name: 'price_change_percentage_24h')
  final double priceChangePercentage24h;
  @JsonKey(name: 'market_cap_change_24h')
  final int marketCapChange24h;
  @JsonKey(name: 'market_cap_change_percentage_24h')
  final double marketCapChangePercentage24h;
  @JsonKey(name: 'circulating_supply')
  final double circulatingSupply;
  @JsonKey(name: 'total_supply')
  final double? totalSupply;
  @JsonKey(name: 'max_supply')
  final double? maxSupply;
  final double ath;
  @JsonKey(name: 'ath_change_percentage')
  final double athChangePercentage;
  @JsonKey(name: 'ath_date')
  final DateTime athDate;
  final double atl;
  @JsonKey(name: 'atl_change_percentage')
  final double atlChangePercentage;
  @JsonKey(name: 'atl_date')
  final DateTime atlDate;
  final Roi? roi;
  @JsonKey(name: 'last_updated')
  final DateTime lastUpdated;
  Map<String, dynamic> toJson() => _$CoinToJson(this);
}
