import 'package:coinmerce/api/model/coin.dart';
import 'package:coinmerce/core/extensions/dollar_extension.dart';
import 'package:coinmerce/core/router/app_router.dart';
import 'package:coinmerce/ui/others/primary_constants.dart';
import 'package:coinmerce/ui/others/primary_padding.dart';
import 'package:coinmerce/ui/others/primary_spacing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoinItem extends StatelessWidget {
  const CoinItem(this.coin, {super.key});
  final Coin coin;

  @override
  Widget build(BuildContext context) {
    return PrimaryPadding.sm(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(PrimaryConstants.kNormalBorderRadius)),
        child: InkWell(
          onTap: () => context.push(AppRouter.detailPath, extra: coin),
          child: PrimaryPadding.md(
            child: SizedBox(
              height: PrimaryConstants.kHugeImageSize,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(PrimaryConstants.kNormalBorderRadius)),
                    child: Hero(
                      tag: coin.id,
                      child: Image.network(
                        coin.image,
                        width: PrimaryConstants.kHugeImageSize,
                        height: PrimaryConstants.kHugeImageSize,
                        fit: BoxFit.cover,
                        errorBuilder:
                            (_, __, ___) =>
                                const Icon(Icons.image_not_supported, size: PrimaryConstants.kHugeImageSize),
                      ),
                    ),
                  ),
                  Expanded(
                    child: PrimaryPadding.md(
                      top: false,
                      bottom: false,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(coin.currentPrice.toDollar(), style: Theme.of(context).textTheme.displaySmall),
                          const PrimarySpacing.gapXxs(),
                          Text('${coin.name} - ${coin.id}', style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
