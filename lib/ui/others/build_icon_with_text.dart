import 'package:coinmerce/ui/others/primary_spacing.dart';
import 'package:flutter/material.dart';

class BuildIconWithText extends StatelessWidget {
  /// coinmerce icon with small belonging text as a label
  const BuildIconWithText({required this.icon, required this.text, super.key});
  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return buildIconWithText(icon, text, context);
  }

  Widget buildIconWithText(Widget icon, String text, BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [icon, const PrimarySpacing.gapXxs(), Text(text, style: Theme.of(context).textTheme.bodyMedium)],
    );
  }
}
