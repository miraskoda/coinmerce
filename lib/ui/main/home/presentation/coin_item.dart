import 'package:coinmerce/api/model/coin.dart';
import 'package:coinmerce/core/app_extensions.dart';
import 'package:coinmerce/core/router/app_router.dart';
import 'package:coinmerce/ui/others/build_icon_with_text.dart';
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
          onTap: () => context.push(AppRouter.detailPath, extra: Coin),
          child: PrimaryPadding.md(
            child: SizedBox(
              height: PrimaryConstants.kRealEstateImageSize,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(PrimaryConstants.kNormalBorderRadius)),
                    child: Hero(
                      tag: coin.id,
                      child: Image.network(
                        coin.image.asCoinImage(),
                        width: PrimaryConstants.kRealEstateImageSize,
                        height: PrimaryConstants.kRealEstateImageSize,
                        fit: BoxFit.cover,
                        errorBuilder:
                            (_, __, ___) =>
                                const Icon(Icons.image_not_supported, size: PrimaryConstants.kRealEstateImageSize),
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
                          Text('123', style: Theme.of(context).textTheme.displaySmall),
                          const PrimarySpacing.gapXxs(),
                          Text('${coin.id} - ${coin.id}', style: Theme.of(context).textTheme.bodyMedium),
                          const Spacer(),
                          Wrap(
                            spacing: PrimaryConstants.kSmallSpacing,
                            children: [
                              BuildIconWithText(
                                icon: const Icon(Icons.bed, size: PrimaryConstants.kDefaultSpacing),
                                text: coin.id,
                              ),
                              BuildIconWithText(
                                icon: const Icon(Icons.shower, size: PrimaryConstants.kDefaultSpacing),
                                text: coin.id,
                              ),
                              BuildIconWithText(
                                icon: const Icon(Icons.square_foot, size: PrimaryConstants.kDefaultSpacing),
                                text: '${coin.id} m²',
                              ),
                            ],
                          ),
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
