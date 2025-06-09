// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coin _$CoinFromJson(Map<String, dynamic> json) => Coin(
  id: json['id'] as String,
  symbol: json['symbol'] as String,
  name: json['name'] as String,
  image: json['image'] as String,
  currentPrice: (json['current_price'] as num).toDouble(),
  marketCap: (json['market_cap'] as num).toInt(),
  marketCapRank: (json['market_cap_rank'] as num).toInt(),
  fullyDilutedValuation: (json['fully_diluted_valuation'] as num?)?.toInt(),
  totalVolume: (json['total_volume'] as num).toInt(),
  high24h: (json['high_24h'] as num).toDouble(),
  low24h: (json['low_24h'] as num).toDouble(),
  priceChange24h: (json['price_change_24h'] as num).toDouble(),
  priceChangePercentage24h:
      (json['price_change_percentage_24h'] as num).toDouble(),
  marketCapChange24h: (json['market_cap_change_24h'] as num).toInt(),
  marketCapChangePercentage24h:
      (json['market_cap_change_percentage_24h'] as num).toDouble(),
  circulatingSupply: (json['circulating_supply'] as num).toDouble(),
  totalSupply: (json['total_supply'] as num?)?.toDouble(),
  maxSupply: (json['max_supply'] as num?)?.toDouble(),
  ath: (json['ath'] as num).toDouble(),
  athChangePercentage: (json['ath_change_percentage'] as num).toDouble(),
  athDate: DateTime.parse(json['ath_date'] as String),
  atl: (json['atl'] as num).toDouble(),
  atlChangePercentage: (json['atl_change_percentage'] as num).toDouble(),
  atlDate: DateTime.parse(json['atl_date'] as String),
  roi:
      json['roi'] == null
          ? null
          : Roi.fromJson(json['roi'] as Map<String, dynamic>),
  lastUpdated: DateTime.parse(json['last_updated'] as String),
  sparklineIn7d:
      json['sparkline_in_7d'] == null
          ? null
          : SparklineIn7d.fromJson(
            json['sparkline_in_7d'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$CoinToJson(Coin instance) => <String, dynamic>{
  'id': instance.id,
  'symbol': instance.symbol,
  'name': instance.name,
  'image': instance.image,
  'current_price': instance.currentPrice,
  'market_cap': instance.marketCap,
  'market_cap_rank': instance.marketCapRank,
  'fully_diluted_valuation': instance.fullyDilutedValuation,
  'total_volume': instance.totalVolume,
  'high_24h': instance.high24h,
  'low_24h': instance.low24h,
  'price_change_24h': instance.priceChange24h,
  'price_change_percentage_24h': instance.priceChangePercentage24h,
  'market_cap_change_24h': instance.marketCapChange24h,
  'market_cap_change_percentage_24h': instance.marketCapChangePercentage24h,
  'circulating_supply': instance.circulatingSupply,
  'total_supply': instance.totalSupply,
  'max_supply': instance.maxSupply,
  'ath': instance.ath,
  'ath_change_percentage': instance.athChangePercentage,
  'ath_date': instance.athDate.toIso8601String(),
  'atl': instance.atl,
  'atl_change_percentage': instance.atlChangePercentage,
  'atl_date': instance.atlDate.toIso8601String(),
  'roi': instance.roi,
  'last_updated': instance.lastUpdated.toIso8601String(),
  'sparkline_in_7d': instance.sparklineIn7d,
};
