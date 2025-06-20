import 'package:coinmerce/presentation/others/primary_constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PrimarySpacing extends StatelessWidget {
  /// 2px spacing
  const PrimarySpacing.gapXxs({Key? key}) : this._(PrimaryConstants.kTinySpacing, key: key);

  /// 4px spacing
  const PrimarySpacing.gapXs({Key? key}) : this._(PrimaryConstants.kXSmallSpacing, key: key);

  /// 8px spacing
  const PrimarySpacing.gapSm({Key? key}) : this._(PrimaryConstants.kSmallSpacing, key: key);

  /// 16px spacing
  const PrimarySpacing.gapMd({Key? key}) : this._(PrimaryConstants.kDefaultSpacing, key: key);

  /// 32px spacing
  const PrimarySpacing.gapLg({Key? key}) : this._(PrimaryConstants.kLargeSpacing, key: key);

  /// 48px spacing
  const PrimarySpacing.gapXl({Key? key}) : this._(PrimaryConstants.kXLargeSpacing, key: key);

  /// 64px spacing
  const PrimarySpacing.gapXxl({Key? key}) : this._(PrimaryConstants.kHugeSpacing, key: key);

  const PrimarySpacing._(this.gap, {super.key});

  final double gap;

  @override
  Widget build(BuildContext context) {
    return Gap(gap);
  }
}
