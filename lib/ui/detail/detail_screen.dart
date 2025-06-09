import 'package:coinmerce/api/model/coin.dart';
import 'package:coinmerce/core/app_extensions.dart';
import 'package:coinmerce/generated/l10n.dart';
import 'package:coinmerce/ui/others/build_icon_with_text.dart';
import 'package:coinmerce/ui/others/primary_constants.dart';
import 'package:coinmerce/ui/others/primary_padding.dart';
import 'package:coinmerce/ui/others/primary_spacing.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({required this.coin, super.key});
  final Coin coin;

  @override
  Widget build(BuildContext context) {
    final imageProvider = Image.network(
      coin.image.asCoinImage(),
      fit: BoxFit.cover,
      errorBuilder: (_, __, ___) => const Icon(Icons.close_rounded, size: PrimaryConstants.kDefaultSpacing),
    );
    return Scaffold(
      body: CustomScrollView(
        clipBehavior: Clip.none,
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, PrimaryConstants.kDefaultSpacing),
              child: Transform.translate(
                offset: const Offset(0, 1),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(PrimaryConstants.kLargeBorderRadius),
                    ),
                  ),
                  child: const SizedBox(width: double.infinity, height: PrimaryConstants.kDefaultSpacing),
                ),
              ),
            ),
            stretch: true,
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(background: Hero(tag: coin.id, child: imageProvider)),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryPadding.md(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(coin.id, style: Theme.of(context).textTheme.displayLarge),
                          Wrap(
                            spacing: PrimaryConstants.kSmallSpacing,
                            children: [
                              BuildIconWithText(
                                icon: Icon(
                                  Icons.hotel,
                                  size: PrimaryConstants.kDefaultSpacing,
                                  color: Theme.of(context).iconTheme.color?.withAlpha(128),
                                ),
                                text: coin.id,
                              ),
                              BuildIconWithText(
                                icon: Icon(
                                  Icons.shower,
                                  size: PrimaryConstants.kDefaultSpacing,
                                  color: Theme.of(context).iconTheme.color?.withAlpha(128),
                                ),
                                text: coin.id,
                              ),
                              BuildIconWithText(
                                icon: Icon(
                                  Icons.square_foot,
                                  size: PrimaryConstants.kDefaultSpacing,
                                  color: Theme.of(context).iconTheme.color?.withAlpha(128),
                                ),
                                text: '${coin.id} m²',
                              ),
                            ],
                          ),
                        ],
                      ),
                      const PrimarySpacing.gapMd(),
                      Text('${coin.id} - ${coin.id}', style: Theme.of(context).textTheme.displaySmall),
                      const PrimarySpacing.gapLg(),
                      Text(S.of(context).description, style: Theme.of(context).textTheme.displayLarge),
                      const PrimarySpacing.gapMd(),
                      Text(coin.id, style: Theme.of(context).textTheme.bodyMedium),
                      const PrimarySpacing.gapLg(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
