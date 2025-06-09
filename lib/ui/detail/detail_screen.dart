import 'package:coinmerce/api/model/coin.dart';
import 'package:coinmerce/core/extensions/app_extensions.dart';
import 'package:coinmerce/core/extensions/dollar_extension.dart';
import 'package:coinmerce/ui/others/primary_constants.dart';
import 'package:coinmerce/ui/others/primary_padding.dart';
import 'package:coinmerce/ui/others/primary_spacing.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({required this.coin, super.key});
  final Coin coin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: coin.id,
                child: Image.network(
                  coin.image.asCoinImage(),
                  fit: BoxFit.contain,
                  errorBuilder: (_, __, ___) => const Icon(Icons.image_not_supported, size: 100),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: PrimaryPadding.md(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PrimarySpacing.gapMd(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(coin.name, style: Theme.of(context).textTheme.headlineMedium),
                            Text(coin.symbol.toUpperCase(), style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(coin.currentPrice.toDollar(), style: Theme.of(context).textTheme.headlineMedium),
                          Text(
                            coin.priceChangePercentage24h.toDollarWithSign(),
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: coin.priceChangePercentage24h >= 0 ? Colors.green : Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const PrimarySpacing.gapLg(),
                  _buildInfoSection(context, 'Market Data', [
                    _buildInfoRow(context, 'Market Cap', coin.marketCap.toCompactDollar()),
                    _buildInfoRow(context, 'Market Cap Rank', '#${coin.marketCapRank}'),
                    _buildInfoRow(context, '24h Volume', coin.totalVolume.toCompactDollar()),
                    _buildInfoRow(
                      context,
                      'Circulating Supply',
                      '${coin.circulatingSupply.toStringAsFixed(0)} ${coin.symbol.toUpperCase()}',
                    ),
                  ]),
                  const PrimarySpacing.gapLg(),
                  _buildInfoSection(context, 'Price Statistics', [
                    _buildInfoRow(context, '24h High', coin.high24h.toDollar()),
                    _buildInfoRow(context, '24h Low', coin.low24h.toDollar()),
                    _buildInfoRow(context, 'All Time High', coin.ath.toDollar()),
                    _buildInfoRow(context, 'All Time Low', coin.atl.toDollar()),
                  ]),
                  const PrimarySpacing.gapLg(),
                  _buildInfoSection(context, 'Additional Info', [
                    _buildInfoRow(context, 'Last Updated', DateFormat('MMM dd, yyyy HH:mm').format(coin.lastUpdated)),
                    if (coin.roi != null) _buildInfoRow(context, 'ROI', '${coin.roi!.percentage.toStringAsFixed(2)}%'),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoSection(BuildContext context, String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        const PrimarySpacing.gapMd(),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(PrimaryConstants.kDefaultSpacing),
            child: Column(children: children),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: Theme.of(context).textTheme.bodyMedium),
          Text(value, style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
