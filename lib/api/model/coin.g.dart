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
  currentPrice: (json['currentPrice'] as num).toDouble(),
  marketCap: (json['marketCap'] as num).toInt(),
  marketCapRank: (json['marketCapRank'] as num).toInt(),
  fullyDilutedValuation: (json['fullyDilutedValuation'] as num?)?.toInt(),
  totalVolume: (json['totalVolume'] as num).toInt(),
  high24h: (json['high24h'] as num).toDouble(),
  low24h: (json['low24h'] as num).toDouble(),
  priceChange24h: (json['priceChange24h'] as num).toDouble(),
  priceChangePercentage24h:
      (json['priceChangePercentage24h'] as num).toDouble(),
  marketCapChange24h: (json['marketCapChange24h'] as num).toInt(),
  marketCapChangePercentage24h:
      (json['marketCapChangePercentage24h'] as num).toDouble(),
  circulatingSupply: (json['circulatingSupply'] as num).toDouble(),
  totalSupply: (json['totalSupply'] as num?)?.toDouble(),
  maxSupply: (json['maxSupply'] as num?)?.toDouble(),
  ath: (json['ath'] as num).toDouble(),
  athChangePercentage: (json['athChangePercentage'] as num).toDouble(),
  athDate: DateTime.parse(json['athDate'] as String),
  atl: (json['atl'] as num).toDouble(),
  atlChangePercentage: (json['atlChangePercentage'] as num).toDouble(),
  atlDate: DateTime.parse(json['atlDate'] as String),
  roi:
      json['roi'] == null
          ? null
          : Roi.fromJson(json['roi'] as Map<String, dynamic>),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
);

Map<String, dynamic> _$CoinToJson(Coin instance) => <String, dynamic>{
  'id': instance.id,
  'symbol': instance.symbol,
  'name': instance.name,
  'image': instance.image,
  'currentPrice': instance.currentPrice,
  'marketCap': instance.marketCap,
  'marketCapRank': instance.marketCapRank,
  'fullyDilutedValuation': instance.fullyDilutedValuation,
  'totalVolume': instance.totalVolume,
  'high24h': instance.high24h,
  'low24h': instance.low24h,
  'priceChange24h': instance.priceChange24h,
  'priceChangePercentage24h': instance.priceChangePercentage24h,
  'marketCapChange24h': instance.marketCapChange24h,
  'marketCapChangePercentage24h': instance.marketCapChangePercentage24h,
  'circulatingSupply': instance.circulatingSupply,
  'totalSupply': instance.totalSupply,
  'maxSupply': instance.maxSupply,
  'ath': instance.ath,
  'athChangePercentage': instance.athChangePercentage,
  'athDate': instance.athDate.toIso8601String(),
  'atl': instance.atl,
  'atlChangePercentage': instance.atlChangePercentage,
  'atlDate': instance.atlDate.toIso8601String(),
  'roi': instance.roi,
  'lastUpdated': instance.lastUpdated.toIso8601String(),
};
