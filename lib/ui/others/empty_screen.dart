import 'package:coinmerce/generated/l10n.dart';
import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  /// Generic empty screen for reuse
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.search_off_rounded,
          size: MediaQuery.of(context).size.width / 3,
          color: Theme.of(context).colorScheme.primary,
        ),
        Text(S.of(context).emptyResult, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
